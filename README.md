# Projeto Kubernetes

## Cria imagens Docker

Neste projeto temos a criação de duas imagens Docker para uma base de dados em MySQL e um backend em PHP e Apache, para conexão da aplicação com o MySQL.

**Executar os comandos de criação das imagens**
```
$ docker build -t <NOME DO USUÁRIO>/<NOME DA IMAGEM>:<TAG> <CAMINHO DO ARQUIVO DOCKERFILE>
```

## Aplicação

Aplicação Web escrita em PHP simples, página com formulário para preenchimento do nome, e-mail e comentários

## Cria Pod e Serviço no cluster

Arquivo **.yml** para carregar em serviço de núvem da Google GCP

**Pré-requisitos**
1. Criar o cluster diretamente no site de cloud da Google https://console.cloud.google.com/
  - Kubernetes Engine
  - Cluster **criar** 
  Existe a possibilidade de criar um projeto para este cluster
2. Instalar na máquina local o **CLI gcloud**
  - Documentação de referencia https://cloud.google.com/sdk/docs/install#deb 
3. Conectar a máquina local ao cluster da núvem
  - Na **Visão Geral** do cluster criado e linha do clustes em **ações** clicar em **conectar**
  - Copiar o conteúdo de **Acesso à linha de comando** e colar/executar no terminal da máquina local
4. Instalar na máquina local o **kubectl**

**Executar os comandos**
```
$ kubectl apply -f ./<NOME DO ARQUIVO .yml>
```

**Comandos para verificar se foi carregado**
```
$ kubectl get pods
$ kubectl get services
```
