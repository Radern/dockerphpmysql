#!/bin/bash
#==============================================================================
#title           : infos.sh
#description     : This script will show docker environment
#author      : DHE
#date            : 20170527
#version         : 1.0
#usage       : ./infos.sh
#==============================================================================

#Déclaration des codes couleurs
rougefonce='\e[0;31m'
vertfonce='\e[0;32m'
orange='\e[0;33m'
neutre='\e[0;m'

echo -e "${rougefonce}Serveur Apache :${neutre}"
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' rad_apache
echo -e "${rougefonce}Serveur SQL :${neutre}"
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' rad_mysql
echo -e "${orange}MYSQL_USER: ${vertfonce}dbuser${neutre}"
echo -e "${orange}MYSQL_PASSWORD: ${vertfonce}dbpassword${neutre}"
echo -e "${orange}MYSQL_ROOT_PASSWORD: ${vertfonce}dbrootpassword${neutre}"
echo -e "${orange}MYSQL_DATABASE: ${vertfonce}dbdatabase${neutre}"
echo -e "${rougefonce}Serveur PhpMyAdmin :${neutre}"
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' rad_phpmyadmin

