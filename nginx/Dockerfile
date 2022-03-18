FROM nginx:latest
RUN apt-get update -y && apt-get install -y apache2-utils && rm -rf /var/lib/apt/lists/*
ENV BASIC_USERNAME=cuongtnh
ENV BASIC_PASSWORD=123qwe123
ENV FORWARD_HOST=nodejs
ENV FORWARD_PORT=3000

# Nginx config file
WORKDIR /
COPY auth.conf auth.conf
#COPY /opt/nginx.conf /etc/nginx/nginx.conf
# Startup script
COPY run.sh ./
RUN chmod 0755 ./run.sh
CMD [ "./run.sh" ]
