FROM alpine:latest

# Устанавливаем зависимости
RUN apk add --no-cache ca-certificates unzip

# Скачиваем PocketBase
ADD https://github.com/pocketbase/pocketbase/releases/download/v0.22.9/pocketbase_0.22.9_linux_amd64.zip /tmp/pocketbase.zip

# Распаковываем
RUN unzip /tmp/pocketbase.zip -d /usr/local/bin/ && \
    rm /tmp/pocketbase.zip && \
    chmod +x /usr/local/bin/pocketbase

# Открываем порт
EXPOSE 8080

# Запускаем
CMD ["/usr/local/bin/pocketbase", "serve", "--http=0.0.0.0:8080"]
