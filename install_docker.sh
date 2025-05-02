#!/bin/bash
set -euo pipefail

echo "[1/6] Atualizando pacotes..."
sudo apt-get update -y
sudo apt-get install -y \
  ca-certificates \
  curl \
  gnupg \
  lsb-release

echo "[2/6] Adicionando chave GPG do Docker..."
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg |
  sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "[3/6] Adicionando repositório do Docker..."
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" |
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "[4/6] Instalando Docker Engine..."
sudo apt-get update -y
sudo apt-get install -y \
  docker-ce \
  docker-ce-cli \
  containerd.io \
  docker-buildx-plugin \
  docker-compose-plugin

echo "[5/6] Adicionando usuário ao grupo docker..."
sudo usermod -aG docker "$USER"

echo "[6/6] Finalizado. Execute 'newgrp docker' para aplicar o grupo sem reiniciar."
