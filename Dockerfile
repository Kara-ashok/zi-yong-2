FROM alpine:3.23.3

WORKDIR /app

COPY cfst /app/cfst
COPY ip.txt /app/ip.txt
COPY ipv6.txt /app/ipv6.txt

RUN chmod +x /app/cfst

ENTRYPOINT ["/app/cfst"]
