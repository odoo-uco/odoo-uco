#!/bin/bash

echo "[+] Iniciando servicios...\n"

sudo docker-compose up -d odoo

sudo docker-compose up -d postgres