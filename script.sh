#!/bin/bash

echo "Criando as imagens..."

docker build -t rlvenancio/backend:1.0 backend/.

docker build -t rlvenancio/database:1.0 database/.

echo "Carregando imagens para o repositório..."

docker push rlvenancio/backend:1.0
docker push rlvenancio/database:1.0

echo "Criando serviços no Cluster Kubernetes...."

kubectl apply -f ./services.yml

echo "Criando deployments ...."

kubectl apply -f ./deployment.yml
