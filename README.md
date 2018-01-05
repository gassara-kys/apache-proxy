# apache-proxy
docker apache proxy

# ビルド

```bash
$ docker build -t proxy:latest .
```

# テスト

```bash
# 公文チェックなど
$ docker run --rm proxy:latest httpd -S
$ echo $?   # ゼロ以外ならOK?
```

# 起動

```bash
$ docker run -d -p 80:80 \
    --name proxy proxy:latest \
    /usr/local/bin/httpd-foreground
```
