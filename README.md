# docker-dragonwell

alibaba dragonwell jdk

## dragonwell

<https://github.com/alibaba/dragonwell8>

<https://github.com/alibaba/dragonwell11>

<https://github.com/alibaba/dragonwell17>

## 构建步骤

请提前使用`rm-jdk.sh`文件清理jdk非必要文件后，重新压缩成.tar.gz文件

1. 拷贝jdk**.tar.gz文件到jdk目录下面

2. 修改`Dockerfile`文件中的`JAVA_VERSION`

```bash
JAVA_VERSION=JDK版本 # 即.tar.gz文件名称
```

### docker build

```bash
docker build -t jdk:${version} .
```

### docker run

```bash
# 验证
docker run --name jdk -it jdk:${version} sh

java -version

# +0800 时区验证
date -R
```

### docker push

```bash
docker login

# tag  
docker tag jdk:${version} fank243/dragonwell:${version}

# push
docker push fank243/dragonwell:${version}
```
