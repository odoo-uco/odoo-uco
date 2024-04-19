#!/bin/bash

echo "[+] Finalizando servicios...\n"

sudo docker stop odoo-uco_odoo_1

sudo docker stop odoo-uco_postgres_1