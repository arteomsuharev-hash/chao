FROM alpine:latest

RUN apk add --no-cache ca-certificates unzip

ADD https://github.com/pocketbase/pocketbase/releases/download/v0.22.9/pocketbase_0.22.9_linux_amd64.zip /tmp/pocketbase.zip

RUN unzip /tmp/pocketbase.zip -d /usr/local/bin/ && \
    rm /tmp/pocketbase.zip && \
    chmod +x /usr/local/bin/pocketbase

EXPOSE 8080

CMD ["pocketbase", "serve", "--http=0.0.0.0:8080"]