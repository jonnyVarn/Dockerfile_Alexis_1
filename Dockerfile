FROM alpine:latest
RUN apk add py3-pip; pip3 install node django
COPY run.sh .
CMD ["./run.sh" ]
