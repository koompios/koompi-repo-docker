FROM debian
MAINTAINER hongsea119@gmail.com
WORKDIR /repo

RUN apt update && apt upgrade -y && apt install nginx -y
RUN chmod a+rw /repo

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

# Append "daemon off;" to the beginning of the configuration
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
EXPOSE 80

CMD service nginx start

