# motd-api

Ce dépôt contient une application Flask simple appelée "motd-api" (Message of the Day API) qui retourne un message JSON configurable.

## Docker

L'application peut être exécutée dans un conteneur Docker. Voici les étapes pour construire et exécuter l'image Docker :

1. Assurez-vous d'avoir Docker installé sur votre machine.

2. Construisez l'image Docker en utilisant la commande suivante :
   
   ```bash
   docker build -t moncompte/motd-api:v1.0 .
