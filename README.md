# 使用dnspod 实现 ddns

> 例如 subdomain.example.com 需要已经添加到dnspod解析中

* 可以自行打包 `docker build -t ddnspod .` 方式
* 或者直接使用下述命令从dockerhub拉去镜像配置启动

```
docker run -d --name ddnspod -e TOKEN_ID={token_id} -e TOKEN={token} -e DOMAIN={example.com} -e SUBDOMAIN={sub_domain} fly9i/ddnspod
```

## 参照
* 在 https://github.com/rehiy/dnspod-shell 基础上进行打包
