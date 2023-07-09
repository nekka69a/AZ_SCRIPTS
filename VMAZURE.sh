#!/bin/bash
echo Dans quel groupe de ressources souhaitez-vous créer votre VM ?
read -r a
echo Comment souhaitez-vous renommer votre VM ?
read -r b
echo Quelle image souhaitez-vous utiliser ?
read -r c
echo Créer un nom d utilisateur admin
read -r d
az vm create \
	--resource-group $a \
	--name $b \
	--image $c \
	--admin-username $d \
	--generate-ssh-keys
