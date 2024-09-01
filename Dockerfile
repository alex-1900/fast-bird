FROM alpine:3.20.2 AS frps

WORKDIR /usr/src/installer

RUN set -ex \
    && apk update && apk add wget curl \
    && wget https://github.com/fatedier/frp/releases/download/v0.60.0/frp_0.60.0_linux_amd64.tar.gz \
    && tar zxf ./frp_0.60.0_linux_amd64.tar.gz && cd frp_0.60.0_linux_amd64

CMD ["/usr/src/installer/frp_0.60.0_linux_amd64/frps", "-c", "/etc/frps.toml"]
