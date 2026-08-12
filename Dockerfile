FROM nginx:1.27-alpine
COPY Simulador_FIPE_Custo_Diario.html /usr/share/nginx/html/index.html
EXPOSE 80

