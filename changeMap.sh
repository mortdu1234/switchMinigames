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
rm -rf "$WORLD_DIR" "${WORLD_DIR}_nether" "${WORLD_DIR}_the_end"
rm -f "$WORLD_ZIP"

# --- 2. Mise en place de la nouvelle map ---
if [[ -f "$MINIGAME_DIR/world.zip" ]]; then
    echo "==> Extraction de la nouvelle map (world.zip)"
    unzip -q "$MINIGAME_DIR/world.zip" -d "$BASE_DIR"
elif [[ -d "$MINIGAME_DIR/world" ]]; then
    echo "==> Copie de la nouvelle map (dossier world)"
    cp -r "$MINIGAME_DIR/world" "$WORLD_DIR"
else
    echo "Attention : aucune map (world.zip ou world/) trouvée pour $MINIGAME"
fi

# --- 3. Remplacement du jar ---
if [[ -f "$MINIGAME_DIR/server.jar" ]]; then
    echo "==> Remplacement du server.jar"
    cp "$MINIGAME_DIR/server.jar" "$SERVER_JAR"
else
    echo "Attention : aucun server.jar trouvé pour $MINIGAME"
fi

# --- 4. Remplacement du server.properties ---
if [[ -f "$MINIGAME_DIR/server.properties" ]]; then
    echo "==> Remplacement du server.properties"
    cp "$MINIGAME_DIR/server.properties" "$SERVER_PROPS"
else
    echo "Attention : aucun server.properties trouvé pour $MINIGAME"
fi

# --- 5. Remplacement du .env (définit la version de Java à utiliser) ---
if [[ -f "$MINIGAME_DIR/.env" ]]; then
    echo "==> Remplacement du .env"
    cp "$MINIGAME_DIR/.env" "$ENV_FILE"
else
    echo "Attention : aucun .env trouvé pour $MINIGAME"
fi

echo "==> Terminé. Le serveur est prêt à démarrer avec $MINIGAME"