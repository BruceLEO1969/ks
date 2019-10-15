FROM alpine:latest
RUN apk add --no-cache vim curl
COPY hellotalk /usr/bin/hellotalk

EXPOSE 8080
ENTRYPOINT ["/usr/bin/hellotalk"]
