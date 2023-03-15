#!/bin/bash

echo "Deletando os diretórios dos grupos de usuários"
rm -rf /publico
rm -rf /adm
rm -rf /ven
rm -rf /sec
echo "Diretórios deletados"

echo "Excluindo os grupos de usuários"
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC
echo "Grupos de usuários excluidos"

echo "Excluindo usuários"
userdel -r -f carlos
userdel -r -f maria
userdel -r -f joao
userdel -r -f debora
userdel -r -f sebastiana
userdel -r -f roberto
userdel -r -f josefina
userdel -r -f amanda
userdel -r -f rogerio
echo "Usuários excluidos"