# Instalando WSL 2, Ubuntu 22.04 e Docker Engine no Windows

Aprenda a rodar Docker com **desempenho de Linux** direto no seu **Windows**!

Este guia vai te ensinar como instalar:
- WSL 2
- Ubuntu 22.04
- Docker Engine (sem Docker Desktop!)

## 1. Instalar o WSL 2

Abra o **Prompt de Comando** ou o **PowerShell** como administrador e execute:

```bash
wsl --install
```

Este comando vai:
- Ativar os componentes necessários
- Baixar e instalar o **Ubuntu 22.04** (por padrão)
- Configurar o **WSL 2** como versão padrão

## 2. Verificar se o WSL 2 está funcionando

```bash
wsl --list --verbose
```

Confirme se o Ubuntu instalado está como **Version: 2** 

## 3. Atualizar o Ubuntu

```bash
sudo apt update && sudo apt upgrade -y
```

## 4. Instalar o Docker Engine no Ubuntu

### 4.1 Tornar o script executável

```bash
chmod +x install_docker.sh
```

### 4.3 Executar o script

```bash
./install_docker.sh
```

## 5. Permitir rodar Docker sem sudo (já incluso no script)

O script já adiciona seu usuário ao grupo `docker` automaticamente!

Para aplicar sem precisar reiniciar o terminal:

```bash
newgrp docker
```

## 6. Testar Docker

```bash
docker run -d -p 8080:5678 hashicorp/http-echo -text="Hello World from Docker!"
```

Depois, abra seu navegador em:

```bash
http://localhost:8080
```

Você verá: Hello World from Docker!
---
