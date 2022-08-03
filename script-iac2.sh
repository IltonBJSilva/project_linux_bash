echo "Atualizando servidor"
#Atualizar o servidor
apt-get update
apt-get upgrade -y

echo "Instalando o apache e o unzip"
#Instalar o apache2; Instalar o unzip;
apt-get install apache2 unzip -y 

echo "Baixando aplicação e entrando na pasta /tmp"
#Baixar a aplicação disponível no endereço https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip no diretório /tmp;
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando Arquivo main.zip"
#Descompactar
unzip main.zip

echo "Copiando os arquivos da aplicação no diretório padrão do apache"
#Copiar os arquivos da aplicação no diretório padrão do apache;
cd linux-site-dio-main
cp -R * /var/www/html
