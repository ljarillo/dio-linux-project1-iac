#!/bin/bash

echo "Criando os diretórios dos grupos de usuários"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Diretóricos criados"

echo "Criando os grupos de usuários"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos de usuários criados"

echo "Criando usuários e colocando eles nos respectivos grupos"
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
#passwd carlos -e
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
#passwd maria -e
useradd joao -c "Joao" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
#passwd joao -e

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN
#passwd debora -e
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN
#passwd sebastiana -e
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN
#passwd roberto -e

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
#passwd josefina -e
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
#passwd amanda -e
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
#passwd rogerio -e
echo "Usuários criados"

echo "Alterando o permissionamento de diretórios"
chmod 777 /publico/

chown root:GRP_ADM /adm
chmod 770 /adm

chown root:GRP_VEN /ven
chmod 770 /ven

chown root:GRP_SEC /sec
chmod 770 /sec
echo "Permissionamento alterado"
echo "Fim de script"
