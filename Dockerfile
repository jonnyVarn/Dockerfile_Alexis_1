FROM alpine:latest
RUN apk add vim
CMD ["ping 8.8.8.8"]
