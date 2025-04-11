#!/bin/bash

echo REALIZANDO OPERACOES NECESSARIAS

# Cria usuários

useradd carlos -m -c "carlos" -s /bin/bash -p $(openssl passwd -6 'SuaSenha')
useradd maria -m -c "maria" -s /bin/bash -p $(openssl passwd -6 'SuaSenha')
useradd joao -m -c "joao" -s /bin/bash -p $(openssl passwd -6 'SuaSenha')

useradd debora -m -c "debora" -s /bin/bash -p $(openssl passwd -6 'SuaSenha')
useradd sebastiana -m -c "sebastiana" -s /bin/bash -p $(openssl passwd -6 'SuaSenha')
useradd roberto -m -c "roberto" -s /bin/bash -p $(openssl passwd -6 'SuaSenha')

useradd josefina -m -c "josefina" -s /bin/bash -p $(openssl passwd -6 'SuaSenha')
useradd amanda -m -c "amanda" -s /bin/bash -p $(openssl passwd -6 'SuaSenha')
useradd rogerio -m -c "rogerio" -s /bin/bash -p $(openssl passwd -6 'SuaSenha')

# Cria grupos

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Adiciona usuários aos respectivos grupos

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio


# Cria diretórios

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Permissionando diretórios

chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
chmod 777 /publico/

# Padroniza proprietarios e grupos de acesso dos diretório

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /publico

