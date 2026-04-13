FROM alpine:latest

RUN apk add --no-cache ca-certificates unzip wget

RUN wget https://github.com/pocketbase/pocketbase/releases/download/v0.22.9/pocketbase_0.22.9_linux_amd64.zip -O /tmp/pocketbase.zip && \
    unzip /tmp/pocketbase.zip -d /usr/local/bin/ && \
    rm /tmp/pocketbase.zip && \
    chmod +x /usr/local/bin/pocketbase

EXPOSE 8080

CMD ["/usr/local/bin/pocketbase", "serve", "--http=0.0.0.0:8080"]
