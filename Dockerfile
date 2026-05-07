# Image de base officielle Node.js (version 20, légère Alpine)
FROM node:20-alpine

# Définit le dossier de travail dans le conteneur
WORKDIR /app

# Copie uniquement les fichiers de dépendances en premier
COPY package*.json ./

# Installe les dépendances Node.js
RUN npm install

# Copie tout le reste du projet dans le conteneur
COPY . .

# Indique que l’application écoute sur le port 3000
EXPOSE 3000

CMD ["npm", "start"]