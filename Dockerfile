# Utiliser une image de base contenant Python
FROM python:3.8-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier requirements.txt dans le conteneur
COPY requirements.txt .

# Installer les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Copier les fichiers de l'application dans le conteneur
COPY . .

# Exposer le port sur lequel l'application Flask écoute
EXPOSE 5000

# Définir la variable d'environnement MESSAGE
ENV MESSAGE="Hello World!"

# Définir la commande par défaut pour démarrer l'application
CMD ["python", "motd-api.py"]
