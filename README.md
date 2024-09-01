# fast-bird

# 获取证书
```shell
#certbot certonly --standalone -d comblldxtfy.frps.grayless.top
certbot certonly --dns-cloudflare --dns-cloudflare-credentials ~/.secrets/certbot/cloudflare.ini -d *.frps.grayless.top

```

# frp 客户端配置
https://gofrp.org/zh-cn/docs/examples/vhost-http/
```shell
# https://github.com/fatedier/frp/releases
wget https://github.com/fatedier/frp/releases/download/v0.60.0/frp_0.60.0_linux_amd64.tar.gz
tar xf frp_0.60.0_linux_amd64.tar.gz
cd frp_0.60.0_linux_amd64
```
编辑 frpc.toml
```toml
serverAddr = "66.112.215.31"
serverPort = 7000

[[proxies]]
name = "web0"
type = "http"
localPort = 8080
customDomains = ["blldxt91fy.frps.grayless.top"]

[[proxies]]
name = "web1"
type = "http"
localPort = 8081
customDomains = ["comblldxtfy.frps.grayless.top"]
```
开启服务
```shell
./frpc -c ./frpc.toml
```
