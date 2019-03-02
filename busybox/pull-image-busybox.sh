#!/usr/bin/env bash

docker pull registry.cn-beijing.aliyuncs.com/k8s-docker-image/busybox:1.29.3 && \
docker tag registry.cn-beijing.aliyuncs.com/k8s-docker-image/busybox:1.29.3 busybox:1.29.3 && \
docker rmi registry.cn-beijing.aliyuncs.com/k8s-docker-image/busybox:1.29.3