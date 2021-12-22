# docker-dragonwell

alibaba dragonwell jdk

## 构建步骤

请提前使用`rm-jdk.sh`文件清理jdk非必要文件后，重新压缩成.tar.gz文件

1. 拷贝jdk**.tar.gz文件到jdk目录下面

2. 修改`Dockerfile`文件中的`JAVA_VERSION`

```bash
JAVA_VERSION=JDK版本 # 即.tar.gz文件名称
```

3. 构建镜像

```bash
docker build -t jdk:1.8.0_302 .
```

4. 验证镜像

```bash
# 验证
docker run --name jdk -it jdk:1.8.0_302 sh

java -version

# +0800 时区验证
date -R
```

4. 推送镜像到hub.docker.com

```bash
docker login

# tag 
docker tag jdk:1.8.0_302 fank243/dragonwell:1.8.0_302

# push
docker push fank243/dragonwell:1.8.0_302

```