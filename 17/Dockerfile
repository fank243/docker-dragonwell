FROM alpine:latest

# JDK 版本号
ARG JAVA_VERSION=jdk-17.0.1

WORKDIR /usr/local/java

# 添加JDK到容器中并解压缩
ADD ${JAVA_VERSION}.tar.gz /usr/local/java

# 复制arthas-boot.jar
# COPY arthas-boot.jar /arthas/arthas-boot.jar

# 更换国内源
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
&& apk upgrade --update-cache

# 安装时区
RUN apk add --no-cache tzdata \
&& ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# 创建应用目录，根据需要创建，如果需要从外部加载配置文件、lib目录则创建
# RUN mkdir -p /app/config && mkdir -p /app/logs && mkdir -p /app/lib

ENV JAVA_HOME=/usr/local/java/${JAVA_VERSION}
ENV PATH $PATH:/usr/local/java/${JAVA_VERSION}/bin

CMD ["java","-version"]
