# Imagem utilizada
FROM node:latest

# Mantenedor da imagem
MAINTAINER André Bonfante

# Variável de ambiente
ENV NODE_ENV=production
ENV PORT=3000

# Copiar o conteúdo do diretório atual para o diretório /var/www do container
COPY . /var/www

# Diretório de trabalho para executar os comandos
WORKDIR /var/www

# Executa o npm install após a criação do container
RUN npm install

# Comando executado como ponto de entrada do container
ENTRYPOINT ["npm", "start"]

# Expor a porta 3000
EXPOSE $PORT