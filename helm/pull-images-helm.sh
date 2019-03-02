#!/usr/bin/env bash

docker pull registry.cn-beijing.aliyuncs.com/k8s-docker-image/tiller:v2.13.0 && \
docker tag registry.cn-beijing.aliyuncs.com/k8s-docker-image/tiller:v2.13.0 gcr.io/kubernetes-helm/tiller:v2.13.0 && \
docker rmi registry.cn-beijing.aliyuncs.com/k8s-docker-image/tiller:v2.13.0
