# Usar a imagem oficial do Nginx
FROM nginx:alpine

# Remover arquivos padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar seus arquivos HTML, CSS e JS para a pasta do Nginx
COPY . /usr/share/nginx/html

# Expor a porta 80 (porta padrão HTTP)
EXPOSE 80

# Comando para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]

