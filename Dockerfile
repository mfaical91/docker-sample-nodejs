#utiliser une image Node.js
FROM node:18 

#mettre le dossier de travail à /app
WORKDIR /app

#copier le  package.json et le package-lock.json
COPY package*.json ./

#installer les dépendances
RUN npm install
#copie le reste des fichiers
COPY . .

#exposer le port 3000
EXPOSE 3000

#démarrer l'application
CMD [ "npm","start" ]
