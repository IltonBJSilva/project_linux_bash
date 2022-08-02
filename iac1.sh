#!/bin/bash


echo "Criando Diretorios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Diretorios Criado"

echo "Criando Grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos criado"

echo "Criando usuarios do sistema..."
useradd rodrigo -c "Rodrigo Silva" -m -s /bin/bash -G NOME_GRUPO

echo "Usuarios adm criado"
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd maria -e

useradd joao_ -c "João" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd joao_ -e


echo "Usuarios Vendas criado"
useradd debora -c "debora" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "roberto" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd roberto -e



echo "Usuarios Secretariado criado"
useradd josefina -c "josefina" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "amanda" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "rogerio" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd rogerio -e
echo "Finalizando!!"



echo "Inserindo permissões"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#Grupo associado a cada pasta tera essas permissões
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."
