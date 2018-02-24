FROM golang:1.9.3

RUN set -e \
	&& apt update -y \
	&& apt install -y default-jre-headless openjdk-8-jdk

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV LD_LIBRARY_PATH="$JAVA_HOME/jre/lib/amd64/server"
ENV CGO_CFLAGS="-I$JAVA_HOME/include -I$JAVA_HOME/include/linux"
ENV CGO_LDFLAGS="-L$JAVA_HOME/jre/lib/amd64/server/ -ljvm -lpthread"
ENV CLASSPATH="."

RUN go get github.com/juntaki/jnigo

WORKDIR /go/src/github.com/ieee0824/go-jni-docker-sample

COPY . .

