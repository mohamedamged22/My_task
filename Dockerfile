
FROM alpine:latest

RUN apk update && apk add --no-cache g++

COPY app.cpp /app.cpp

RUN g++ /app.cpp -o /app

CMD ["/app"]
