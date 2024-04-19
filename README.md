## Información

Este repositorio contiene un proyecto que utiliza Docker para crear un contenedor con una imagen del ERP/CRM Odoo 16.0 con un repositorio con los trabajos de seminario de Sistemas de Información de Ingeniería Informática de la Universidad de Córdoba.

## Instalación automática

1. Clona este repositorio en tu máquina local:

    ```bash
    git clone <URL_DEL_REPOSITORIO>
    ```

2. Navega al directorio del proyecto:

    ```bash
    cd <DIRECTORIO_DEL_PROYECTO>
    ```

3. Ejecuta el script de instalación `install.sh` con permisos de administrador para instalar las dependencias necesarias para el despliegue del contenedor:

    ```bash
    sudo ./install.sh
    ```

    Si Docker y Docker Compose ya están instalados en tu sistema, este script simplemente desplegará el contenedor.

## Configuración

Este proyecto utiliza un archivo `.env` para configurar variables de entorno. Asegúrate de revisar y ajustar este archivo según tus necesidades antes de ejecutar el contenedor.