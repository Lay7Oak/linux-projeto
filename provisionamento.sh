echo "Removendo diretórios antigos..."
rm -rf /publico /adm /ven /sec

echo "Removendo grupos antigos..."
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "Removendo usuários antigos..."
userdel -r carlos
userdel -r maria
userdel -r joao_
userdel -r debora
userdel -r sebastiana
userdel -r roberto
userdel -r josefina
userdel -r amanda
userdel -r rogerio

echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e adicionando aos grupos..."


useradd carlos -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM
useradd joao_ -m -s /bin/bash -G GRP_ADM


useradd debora -m -s /bin/bash -G GRP_VEN
useradd sebastiana -m -s /bin/bash -G GRP_VEN
useradd roberto -m -s /bin/bash -G GRP_VEN


useradd josefina -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash -G GRP_SEC
useradd rogerio -m -s /bin/bash -G GRP_SEC


echo "Senha123" | passwd --stdin carlos
echo "Senha123" | passwd --stdin maria
echo "Senha123" | passwd --stdin joao_
echo "Senha123" | passwd --stdin debora
echo "Senha123" | passwd --stdin sebastiana
echo "Senha123" | passwd --stdin roberto
echo "Senha123" | passwd --stdin josefina
echo "Senha123" | passwd --stdin amanda
echo "Senha123" | passwd --stdin rogerio

echo "Definindo permissões dos diretórios..."

chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Provisionamento concluído com sucesso!"