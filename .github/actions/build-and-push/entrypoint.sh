#!/bin/sh

username=$(echo "$1" | tr '[:upper:]' '[:lower:]')
imagename="docker.pkg.github.com/${username}/docker/${5}"

echo "imagename: ${imagename}"

echo ${2} | docker login -u ${username} --password-stdin  docker.pkg.github.com && \
cd ${3} && \
docker build -f ${4} -t ${imagename} . && \
docker push ${imagename}
