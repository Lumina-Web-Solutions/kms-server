FROM alpine:latest

RUN apk add --no-cache build-base git curl && \
    git clone https://github.com/Wind4/vlmcsd.git && \
    cd vlmcsd && \
    make

EXPOSE 1688

CMD ["./vlmcsd/bin/vlmcsd", "-D"]
