#!/bin/bash

echo "Iniciando a criação de diretórios..."

# cria todos os diretórios definidos para o projeto

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados com sucesso!"

# cria os grupos de usuários definidos para o projeto

echo "Iniciando a criação dos grupos de Usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos Criados com sucesso!"

#cria os usuários definidos para o projeto

echo "Iniciando a criação dos usuários..."

#usuários do grupo ADM
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Carlos123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Maria123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Joao123) -G GRP_ADM

#usuários do grupo VEN
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Debora123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Sebastiana123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Roberto123) -G GRP_VEN

#usuários do grupo SEC
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Josefina123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Amanda123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Rogerio123) -G GRP_SEC

echo "Usuários criados com sucesso!"

#especificando as permissões de diretórios

echo "Definindo as permissões para os diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777/publico
chmod 770/adm
chmod 770/ven
chmod 770/sec

echo "Permissões de diretórios finalizadas"

echo "** - Processo de instalação concluído com sucesso! - **"
