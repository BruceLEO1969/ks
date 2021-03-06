FROM alpine:latest
RUN apk add --no-cache \
        libc6-compat
COPY hellotalk /usr/bin/hellotalk

EXPOSE 8080
CMD ["/usr/bin/hellotalk"]
