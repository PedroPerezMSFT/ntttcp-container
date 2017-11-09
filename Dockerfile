FROM gliderlabs/alpine:3.6
LABEL maintainer="pedro.perez@microsoft.com"

RUN apk add --update openssl \
  && wget https://github.com/PedroPerezMSFT/ntttcp-container/blob/master/binaries/ntttcp-musl-1.3.0?raw=true \ 
    -O /run/ntttcp \
  && chmod +x /run/ntttcp

ENTRYPOINT ["/run/ntttcp"]