#!/usr/bin/env bash

images=(
kube-proxy:v1.13.4
kube-apiserver:v1.13.4
kube-controller-manager:v1.13.4
kube-scheduler:v1.13.4
coredns:1.2.6
etcd:3.2.24
pause:3.1
)

for image in ${images[@]}; do
  docker pull registry.cn-beijing.aliyuncs.com/k8s-docker-image/$image
  docker tag registry.cn-beijing.aliyuncs.com/k8s-docker-image/$image k8s.gcr.io/$image
  docker rmi registry.cn-beijing.aliyuncs.com/k8s-docker-image/$image
done

docker pull registry.cn-beijing.aliyuncs.com/k8s-docker-image/flannel:v0.11.0-amd64 && \
docker tag registry.cn-beijing.aliyuncs.com/k8s-docker-image/flannel:v0.11.0-amd64 quay.io/coreos/flannel:v0.11.0-amd64 && \
docker rmi registry.cn-beijing.aliyuncs.com/k8s-docker-image/flannel:v0.11.0-amd64

docker pull registry.cn-beijing.aliyuncs.com/k8s-docker-image/nginx-ingress-controller:0.22.0
docker tag registry.cn-beijing.aliyuncs.com/k8s-docker-image/nginx-ingress-controller:0.22.0 quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.22.0
docker rmi registry.cn-beijing.aliyuncs.com/k8s-docker-image/nginx-ingress-controller:0.22.0

docker pull registry.cn-qingdao.aliyuncs.com/wangdali/tiller:v2.12.3
docker tag registry.cn-qingdao.aliyuncs.com/wangdali/tiller:v2.12.3 gcr.io/kubernetes-helm/tiller:v2.12.3
docker rmi registry.cn-qingdao.aliyuncs.com/wangdali/tiller:v2.12.3


#k8s.gcr.io/kube-proxy                                            v1.13.4
#k8s.gcr.io/kube-controller-manager                               v1.13.4
#k8s.gcr.io/kube-apiserver                                        v1.13.4
#k8s.gcr.io/kube-scheduler                                        v1.13.4
