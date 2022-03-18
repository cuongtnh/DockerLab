FROM nginx:latest
RUN apt-get update -y && rm -rf /var/lib/apt/lists/*
ENV BASIC_USERNAME=username
ENV BASIC_PASSWORD=password
ENV FORWARD_HOST=google.com
ENV FORWARD_PORT=80

# Nginx config file
WORKDIR /
COPY auth.conf auth.conf
#COPY /opt/nginx.conf /etc/nginx/nginx.conf
# Startup script
COPY run.sh ./
RUN chmod 0755 ./run.sh
CMD [ "./run.sh" ]
