#!/bin/bash

# Script para instalar dependências do sistema necessárias para o livro
# Execute com: sudo bash resources/install_system_deps.sh

echo "Instalando dependências do sistema para o livro..."

# Atualizar repositórios
apt-get update

# Dependências para Cairo (gráficos)
apt-get install -y \
    libcairo2-dev \
    libxt-dev

# Dependências para rsvg (SVG)
apt-get install -y \
    librsvg2-dev

# Dependências para gdal/sf (mapas espaciais)
apt-get install -y \
    libgdal-dev \
    gdal-bin \
    libgeos-dev \
    libproj-dev

# Dependências para curl/httr
apt-get install -y \
    libcurl4-openssl-dev

# Dependências para XML
apt-get install -y \
    libxml2-dev

# Dependências para SSL
apt-get install -y \
    libssl-dev

# Dependências para imagens
apt-get install -y \
    libpng-dev \
    libjpeg-dev

echo "✅ Dependências do sistema instaladas com sucesso!"
echo "Agora execute: Rscript resources/install_packages.R"
