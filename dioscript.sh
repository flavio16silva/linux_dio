#!/bin/bash

echo "criando script do sistema"
 
echo " Criando diretorios..."
sudo mkdir publico
sudo mkdir adm
sudo mkdir ven
sudo mkdir sec

echo " Criando grupos..."
sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo "Criando usuarios e adicionando grupos.."
# Grupo ADM
sudo useradd joao -c "joao_" -s /bin/bash -m -p $(passwd -crypt senha123) -G GRP_ADM
sudo useradd maria -c "maria" -s /bin/bash -m -p $(passwd -crypt senha123) -G GRP_ADM
sudo useradd carlos -c "carlos" -s /bin/bash -m -p $(passwd -crypt senha123) -G GRP_ADM
# Grupo VEN
sudo useradd debora -c "debora" -s /bin/bash -m -p $(passwd -crypt senha123) -G GRP_VEN
sudo useradd sebastiana -c "sebastiana" -s /bin/bash -m -p $(passwd -crypt senha123) -G GRP_VEN
sudo useradd roberto -c "roberto" -s /bin/bash -m -p $(passwd -crypt senha123) -G GRP_VEN
# Grupo SEC
sudo useradd josefina -c "josefina" -s /bin/bash -m -p $(passwd -crypt senha123) -G GRP_SEC
sudo useradd amanda -c "amanda" -s /bin/bash -m -p $(passwd -crypt senha123) -G GRP_SEC
sudo useradd rogerio -c "rogerio" -s /bin/bash -m -p $(passwd -crypt senha123) -G GRP_SEC

echo "Configurando permissoes..."

# Dono do grupo e diretorio
sudo chown root:GRP_ADM /adm
sudo chown root:GRP_VEN /ven
sudo chown root:GRP_SEC /sec

# Permissao total em seus diretorios
sudo chmod 770 /adm
sudo chmod 770 /ven
sudo chmod 770 /sec

# Permissao total em publico 
sudo chmod 777 /publico



