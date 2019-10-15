FROM alpine:3.9
RUN apk add --no-cache vim curl
COPY hellotalk /usr/bin/hellotalk

EXPOSE 8080
CMD ["/usr/bin/hellotalk"]
