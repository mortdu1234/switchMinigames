#!/bin/bash
set -euo pipefail

# --- Configuration ---
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MINIGAMES_DIR="$BASE_DIR/minigames"
WORLD_DIR="$BASE_DIR/world"
WORLD_ZIP="$BASE_DIR/world.zip"
SERVER_JAR="$BASE_DIR/server.jar"
SERVER_PROPS="$BASE_DIR/server.properties"
ENV_FILE="$BASE_DIR/.env"

# --- Vérification des arguments ---
if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <nom_minijeu>"
    echo "Minijeux disponibles :"
    ls -1 "$MINIGAMES_DIR"
    exit 1
fi

MINIGAME="$1"
MINIGAME_DIR="$MINIGAMES_DIR/$MINIGAME"

if [[ ! -d "$MINIGAME_DIR" ]]; then
    echo "Erreur : le minijeu '$MINIGAME' n'existe pas dans $MINIGAMES_DIR"
    echo "Minijeux disponibles :"
    ls -1 "$MINIGAMES_DIR"
    exit 1
fi

echo "==> Switch vers le minijeu : $MINIGAME"

# --- 1. Suppression du monde actuel ---
echo "==> Suppression de l'ancien monde"
chmod -R 775 "$WORLD_DIR" "${WORLD_DIR}_nether" "${WORLD_DIR}_the_end" 2>/dev/null || true
rm -rf "$WORLD_DIR" "${WORLD_DIR}_nether" "${WORLD_DIR}_the_end"
rm -f "$WORLD_ZIP"

# --- 2. Mise en place de la nouvelle map ---
if [[ -f "$MINIGAME_DIR/world.zip" ]]; then
    echo "==> Extraction de la nouvelle map (world.zip)"
    unzip -q "$MINIGAME_DIR/world.zip" -d "$BASE_DIR"
    chmod -R 775 "$WORLD_DIR" 2>/dev/null || true
elif [[ -d "$MINIGAME_DIR/world" ]]; then
    echo "==> Copie de la nouvelle map (dossier world)"
    cp -r "$MINIGAME_DIR/world" "$WORLD_DIR"
    chmod -R 775 "$WORLD_DIR" 2>/dev/null || true
else
    echo "Attention : aucune map (world.zip ou world/) trouvée pour $MINIGAME"
fi

# --- 3. Remplacement du jar ---
if [[ -f "$MINIGAME_DIR/server.jar" ]]; then
    echo "==> Remplacement du server.jar"
    cp "$MINIGAME_DIR/server.jar" "$SERVER_JAR"
    chmod 664 "$SERVER_JAR" 2>/dev/null || true
else
    echo "Attention : aucun server.jar trouvé pour $MINIGAME"
fi

# --- 4. Remplacement du server.properties ---
if [[ -f "$MINIGAME_DIR/server.properties" ]]; then
    echo "==> Remplacement du server.properties"
    cp "$MINIGAME_DIR/server.properties" "$SERVER_PROPS"
    chmod 664 "$SERVER_PROPS" 2>/dev/null || true
else
    echo "Attention : aucun server.properties trouvé pour $MINIGAME"
fi

# --- 5. Validation et remplacement du .env ---
if [[ ! -f "$MINIGAME_DIR/.env" ]]; then
    echo "ERREUR : aucun .env trouvé pour $MINIGAME — fichier obligatoire."
    echo ""
    echo "Crée le fichier $MINIGAME_DIR/.env avec au minimum :"
    echo "  MC_VERSION=1.8.9"
    exit 1
fi

# Vérification que MC_VERSION est bien défini
source "$MINIGAME_DIR/.env"

if [[ -z "${MC_VERSION:-}" ]]; then
    echo "ERREUR : MC_VERSION n'est pas défini dans $MINIGAME_DIR/.env"
    echo "Ajoute la ligne : MC_VERSION=<version>"
    exit 1
fi

echo "==> Remplacement du .env (MC_VERSION=$MC_VERSION)"
cp "$MINIGAME_DIR/.env" "$ENV_FILE"
chmod 664 "$ENV_FILE" 2>/dev/null || true

# --- 6. Résumé ---
echo ""
echo "╔══════════════════════════════════════════════════╗"
echo "║            Switch terminé avec succès            ║"
echo "╠══════════════════════════════════════════════════╣"
printf  "║  Minijeu      : %-33s║\n" "$MINIGAME"
printf  "║  MC Version   : %-33s║\n" "${MC_VERSION}"
printf  "║  Java cible   : %-33s║\n" "${JAVA_VERSION:-résolu au démarrage}"
printf  "║  RAM Xms      : %-33s║\n" "${JAVA_XMS:-auto (50% du Xmx)}"
printf  "║  RAM Xmx      : %-33s║\n" "${JAVA_XMX:-depuis Pterodactyl}"
printf  "║  Flags JVM    : %-33s║\n" "${JAVA_FLAGS:-(aucun)}"
echo "╚══════════════════════════════════════════════════╝"
echo ""
echo "==> Redémarre le serveur dans Pterodactyl pour appliquer."