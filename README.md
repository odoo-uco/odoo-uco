# Proyecto Odoo-Uco

## Descripción

El proyecto Odoo-Uco es una solución basada en Docker que permite desplegar una instancia del sistema ERP/CRM Odoo 16.0, de forma que se pueda utilizar como plantilla para los trabajos de seminario de Sistemas de Información de Ingeniería Informática de la Universidad de Córdoba.

<p align="center">
  <img src="./images/odoo-uco.png" alt="Texto alternativo" style="max-width: 400px; max-height: 300px; border: 2px solid black;">
</p>

## Instalación

Para instalar y ejecutar este proyecto en tu entorno local, sigue estos pasos:

1. **Clonar el repositorio:**

    Clona este repositorio en tu máquina local utilizando el siguiente comando:

    ```bash
    git clone <URL_DEL_REPOSITORIO>
    ```

2. **Navegar al directorio del proyecto:**

    Una vez clonado el repositorio, navega al directorio del proyecto con el siguiente comando:

    ```bash
    cd <DIRECTORIO_DEL_PROYECTO>
    ```

3. **Ejecutar el script de despliegue:**

    Ejecuta el script de despliegue `odoo-uco.sh -start` con permisos de administrador para instalar las dependencias necesarias y desplegar el contenedor. Puedes hacerlo con el siguiente comando:

    ```bash
    sudo ./odoo-uco.sh -start
    ```

## Configuración

Este proyecto utiliza un archivo `.env` para configurar variables de entorno y un archivo `docker-compose.yml` para desplegar el contenedor. Para visualizar el panel de Odoo, ve al navegador y busca `http://localhost:8069`