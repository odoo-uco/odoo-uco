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

# Función para lanzar el contenedor
start_container() {
    echo -e "[+] Lanzando el contenedor con docker-compose up...\n"
    docker-compose -f config/docker-compose.yml up -d
}

# Función para detener el contenedor
stop_container() {
    echo -e "[+] Deteniendo el contenedor con docker-compose down...\n"
    docker-compose -f config/docker-compose.yml down
}

# Comprobar si docker está instalado
if ! command -v docker &> /dev/null; then
    install_docker
fi

# Comprobar si docker-compose está instalado
if ! command -v docker-compose &> /dev/null; then
    install_docker_compose
fi

# Comprobar opción elegida
if [ "$1" == "-start" ]; then
    start_container

    echo -e "\n[+] Volumen de instalación de addons creado con éxito...\n"
    echo -e "Para instalar un módulo muévelo al directorio external-addons\n"

    echo -e "[+] Contenedor odoo-uco lanzado con éxito...\n"
    echo -e "http://localhost:8069\n"

elif [ "$1" == "-stop" ]; then
    stop_container

    echo -e "\n[+] Contenedor odoo-uco finalizado con éxito...\n" 
else
    echo "Uso: $0 { -start | -stop }"
    echo "  -start: Inicia el despliegue del contenedor"
    echo "  -stop: Detiene la ejecución del contenedor"
    exit 1
fi