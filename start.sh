#!/bin/bash

#create cluster
eksctl create cluster -f eks-cluster.yaml --profile gpt

sleep 30s

# install Metrics Server in Kubernetes cluster
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
sleep 5s
kubectl apply -f ./k8s-config/.