FROM node:20-alpine
WORKDIR /app
COPY package.json ./
# Deliberately no package-lock.json committed to this repo, so `npm ci` fails
# fast and deterministically at the dependency-install step:
#   "npm ci can only install packages when your package.json and
#   package-lock.json are in sync" -- this is QA seed data for xCloud PR #6837
#   (deploy diagnosis/retry), not a real application.
RUN npm ci
COPY . .
EXPOSE 3000
CMD ["node", "server.js"]
