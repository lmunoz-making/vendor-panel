# Imagen base con Node.js
FROM node:lts-alpine
RUN corepack enable
# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de dependencias
COPY . .

# Instala las dependencias del proyecto
RUN yarn install

# Expone el puerto en el que la aplicación se ejecutará
EXPOSE 5173

# Comando por defecto para iniciar la aplicación en modo desarrollo
CMD ["yarn", "run", "dev", "--", "--host"]