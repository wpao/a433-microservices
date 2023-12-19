#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image sesuai format Docker Hub
docker tag item-app:v1 albaeud/item-app:v1

# Login ke Docker Hub
docker login

# Mengunggah image ke Docker Hub
docker push albaeud/item-app:v1
