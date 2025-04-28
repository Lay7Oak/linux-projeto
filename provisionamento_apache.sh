#!/bin/bash

# Atualizando o servidor
echo "Atualizando o servidor..."
apt-get update -y
apt-get upgrade -y

# Instalando o Apache2
echo "Instalando o Apache2..."
apt-get install apache2 -y

# Instalando o Unzip
echo "Instalando o Unzip..."
apt-get install unzip -y

# Acessando o diretório /tmp
cd /tmp

# Baixando a aplicação
echo "Baixando a aplicação..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Descompactando o arquivo
echo "Descompactando o arquivo..."
unzip main.zip

# Copiando os arquivos para o diretório padrão do Apache
echo "Copiando os arquivos da aplicação para o servidor web..."
cp -R linux-site-dio-main/* /var/www/html/

# Ajustando permissões (opcional)
echo "Ajustando permissões..."
chown -R www-data:www-data /var/www/html

# Finalizando
echo "Provisionamento finalizado com sucesso!"
