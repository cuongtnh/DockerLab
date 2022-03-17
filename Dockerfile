FROM nginx:latest
RUN apt-get update -y && apt-get install -y apache2-utils && rm -rf /var/lib/apt/lists/*
ENV BASIC_USERNAME=username
ENV BASIC_PASSWORD=password
ENV FORWARD_HOST=google.com
ENV FORWARD_PORT=80

# Nginx config file
WORKDIR /
COPY /opt/auth.conf auth.conf
COPY /opt/helloworld.html /usr/share/nginx/html/index.html
COPY /opt/nginx.conf /etc/nginx/nginx.conf
# Startup script
COPY /opt/run.sh ./
RUN chmod 0755 ./run.sh
CMD [ "./run.sh" ]
