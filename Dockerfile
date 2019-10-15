FROM golang:alpine
COPY hellotalk /usr/bin/hellotalk

EXPOSE 8080
CMD ["/usr/bin/hellotalk"]
