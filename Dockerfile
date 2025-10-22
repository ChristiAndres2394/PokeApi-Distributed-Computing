# Usa la imagen oficial de nginx como base
FROM nginx:alpine

# Copia los archivos estáticos (html, css, js) al directorio que nginx sirve por defecto
COPY ./ /usr/share/nginx/html

# Expone el puerto 80 para acceder a la página
EXPOSE 80

# El contenedor por defecto ejecutará nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
