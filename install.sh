#!/bin/bash

# Arte ASCII
art_ascii="

 ██████╗ ██████╗  ██████╗  ██████╗       ██╗   ██╗ ██████╗ ██████╗ 
██╔═══██╗██╔══██╗██╔═══██╗██╔═══██╗      ██║   ██║██╔════╝██╔═══██╗
██║   ██║██║  ██║██║   ██║██║   ██║█████╗██║   ██║██║     ██║   ██║
██║   ██║██║  ██║██║   ██║██║   ██║╚════╝██║   ██║██║     ██║   ██║
╚██████╔╝██████╔╝╚██████╔╝╚██████╔╝      ╚██████╔╝╚██████╗╚██████╔╝
 ╚═════╝ ╚═════╝  ╚═════╝  ╚═════╝        ╚═════╝  ╚═════╝ ╚═════╝                                                                                                                
"

echo -e "$art_ascii\n"

# Función para instalar Docker
install_docker() {
    echo "[+] Instalando Docker..."
    sudo apt update
    sudo apt install -y docker.io
}

# Función para instalar Docker Compose
install_docker_compose() {
    echo "[+] Instalando Docker Compose..."
    sudo apt update
    sudo apt install -y docker-compose
}

# Comprobar si docker está instalado
if ! command -v docker &> /dev/null; then
    install_docker
fi

# Comprobar si docker-compose está instalado
if ! command -v docker-compose &> /dev/null; then
    install_docker_compose
fi

# Ejecutar docker-compose up
echo -e "[+] Iniciando servicios con docker-compose up...\n"
sleep 1
docker-compose up