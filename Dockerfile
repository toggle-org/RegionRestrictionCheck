FROM alpine:latest

RUN apk add --no-cache curl wget bash grep openssl ca-certificates uuidgen bind-tools

COPY . .
RUN chmod +x /check.sh

ENTRYPOINT ["/bin/bash", "/check.sh"]
