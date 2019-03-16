#!/usr/bin/env bash

images=(node-disk-manager-amd64:v0.3.1 cstor-pool:0.8.0 cstor-pool-mgmt:0.8.0 cstor-istgt:0.8.0 m-exporter:0.8.0 m-apiserver:0.8.0 snapshot-provisioner:0.8.0 snapshot-controller:0.8.0 jiva:0.8.0 openebs-k8s-provisioner:0.8.0)

for image in ${images[@]}; do
  docker pull registry.cn-beijing.aliyuncs.com/k8s-docker-image/$image
  docker tag registry.cn-beijing.aliyuncs.com/k8s-docker-image/$image quay.io/openebs/$image
  docker rmi registry.cn-beijing.aliyuncs.com/k8s-docker-image/$image
done