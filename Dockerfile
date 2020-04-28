FROM debian
MAINTAINER hongsea119@gmail.com
WORKDIR /repo

RUN apt update && apt upgrade -y && apt install nginx -y
RUN chmod a+rw /repo

# Append "daemon off;" to the beginning of the configuration
EXPOSE 80

CMD service nginx start

