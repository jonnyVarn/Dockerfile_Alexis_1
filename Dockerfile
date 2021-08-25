FROM alpine:latest
LABEL author="tomten"
LABEL description="useless aplication"
RUN apk add py3-pip; apk add vim; apk add docker; pip3 install node django; apk add openrc; rc-update add docker boot
WORKDIR /app
COPY run.sh ./app
CMD ["./run.sh" ]

# to control the regular docker instead docker run -ti -v /var/run/docker.sock:/var/run/docker.sock docker
#; service docker start