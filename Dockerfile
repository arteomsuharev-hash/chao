FROM ghcr.io/pocketbase/pocketbase:latest

EXPOSE 8080

CMD ["pocketbase", "serve", "--http=0.0.0.0:8080"]
