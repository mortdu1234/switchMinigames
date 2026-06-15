# Résumé du projet — Serveur Minecraft Modulable

## Contexte infrastructure

| Composant | Détail |
|---|---|
| Hyperviseur | Proxmox |
| VM 1 | Pterodactyl **Panel** |
| VM 2 | Pterodactyl **Wings** |
| Volume Docker | `/var/lib/pterodactyl/volumes/9f3bd708-c74c-442f-a35b-44d26eafa809` |
| RAM allouée | 8192 Mo (via Pterodactyl, 0 swap) |

---

## Objectif

Un seul serveur Minecraft capable de **switcher entre plusieurs mini-jeux**, chacun pouvant tourner sur une **version différente de Minecraft** (de la 1.8 jusqu'à la 26.x), avec la **bonne version de Java sélectionnée automatiquement** au démarrage.

---

## Architecture des fichiers

```
/var/lib/pterodactyl/volumes/9f3bd708-.../   ← volume Pterodactyl (= /home/container)
├── changeMap.sh                              ← script de switch de mini-jeu
├── server.jar                                ← jar actif (copié par changeMap.sh)
├── server.properties                         ← config active (copiée par changeMap.sh)
├── .env                                      ← env actif (copié par changeMap.sh)
├── world/                                    ← map active (copiée par changeMap.sh)
└── minigames/
    ├── BlockedInCombat/
    │   ├── server.jar
    │   ├── world.zip  (ou world/)
    │   ├── server.properties
    │   └── .env                              ← MC_VERSION=1.8.9
    └── TheTowerRemastered/
        ├── server.jar
        ├── world.zip  (ou world/)
        ├── server.properties
        └── .env                              ← MC_VERSION=26.1.2

/opt/minecraft-image/                         ← image Docker (hors Pterodactyl)
├── Dockerfile
├── java-versions.conf                        ← table MC version → Java version
├── install-javas.sh                          ← installe les JDK au build
├── entrypoint.sh                             ← sélectionne le bon Java au démarrage
└── build.sh                                  ← rebuild l'image en une commande
```

---

## Fonctionnement — le flux complet

```
1. ./changeMap.sh <minijeu>
      │
      ├── Supprime world/, world_nether/, world_the_end/
      ├── Copie world.zip ou world/   → world/
      ├── Copie server.jar            → server.jar
      ├── Copie server.properties     → server.properties
      └── Copie .env (MC_VERSION)     → .env  ✔ obligatoire, vérifié

2. Redémarrage du serveur dans Pterodactyl
      │
      └── Docker lance /bin/bash /entrypoint.sh
              │
              ├── Lit .env → récupère MC_VERSION
              ├── Consulte java-versions.conf → résout la version Java
              ├── Calcule RAM : Xmx = SERVER_MEMORY (Pterodactyl) ou JAVA_XMX
              │                Xms = 50% du Xmx (ou JAVA_XMS)
              └── Lance : java -Xms...M -Xmx...M -jar server.jar nogui
```

---

## Image Docker — `minecraft-multijava:latest`

Buildée localement sur la VM Wings depuis `/opt/minecraft-image/`.  
Taille : **2.07 GB** (4 JDK inclus).

### Table de correspondance Java (`java-versions.conf`)

| Minecraft | Java |
|---|---|
| 1.8 → 1.16.5 | Java 8 |
| 1.17 → 1.20.6 | Java 17 |
| 1.21 → 1.21.99 | Java 21 |
| 26.0 → 99.99 | Java 25 |

> Pour ajouter une nouvelle version : **une seule ligne** à ajouter dans `java-versions.conf`, puis `./build.sh`.

---

## Format du `.env` de chaque mini-jeu

```bash
# ── Obligatoire ──────────────────────
MC_VERSION=1.8.9          # Version Minecraft (détermine le Java automatiquement)

# ── Optionnel : Java ─────────────────
# JAVA_VERSION=8          # Forcer Java (si résolution auto insuffisante)

# ── Optionnel : RAM ──────────────────
# JAVA_XMX=4096           # RAM max Mo (sinon : valeur Pterodactyl)
# JAVA_XMS=1024           # RAM min Mo (sinon : 50% du Xmx)

# ── Optionnel : Flags JVM ────────────
# JAVA_FLAGS="-XX:+UseG1GC"
```

---

## Configuration Pterodactyl

| Paramètre | Valeur |
|---|---|
| Docker Image | `minecraft-multijava:latest` |
| Startup Command | `/bin/bash /entrypoint.sh` |
| RAM | Modifiable dans le panel → prise en compte automatiquement |

---