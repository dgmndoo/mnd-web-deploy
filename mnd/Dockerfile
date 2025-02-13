FROM alpine:latest

WORKDIR /app

COPY server .
RUN ls -la /app/server

RUN apk add --no-cache libc6-compat gcompat

RUN chmod +x /app/server

EXPOSE 8080

CMD ["/app/server"]     
