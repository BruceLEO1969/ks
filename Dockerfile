FROM alpine:latest
RUN apk add --no-cache vim curl
COPY hellotalk /usr/bin/

EXPOSE
ENTRYPOINT ["hellotalk"]
