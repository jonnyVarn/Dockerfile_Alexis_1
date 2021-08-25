FROM alpine:latest
RUN apk add py3-pip; pip3 install node django
CMD ["/bin/ash"]
