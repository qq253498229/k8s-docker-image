#!/usr/bin/env bash

images=(node-disk-manager-amd64:v0.3.1 cstor-pool:0.8.1 cstor-pool-mgmt:0.8.1 m-exporter:0.8.1 m-apiserver:0.8.1 snapshot-provisioner:0.8.1 snapshot-controller:0.8.1 jiva:0.8.1 openebs-k8s-provisioner:0.8.1)

for image in ${images[@]}; do
  docker pull registry.cn-beijing.aliyuncs.com/k8s-docker-image/$image
  docker tag registry.cn-beijing.aliyuncs.com/k8s-docker-image/$image quay.io/openebs/$image
  docker rmi registry.cn-beijing.aliyuncs.com/k8s-docker-image/$image
done

docker pull registry.cn-beijing.aliyuncs.com/k8s-docker-image/node-disk-manager-amd64:v0.3.1
docker tag registry.cn-beijing.aliyuncs.com/k8s-docker-image/node-disk-manager-amd64:v0.3.1 quay.io/openebs/node-disk-manager-amd64:v0.3.1
docker rmi registry.cn-beijing.aliyuncs.com/k8s-docker-image/node-disk-manager-amd64:v0.3.1