#!/bin/bash

echo "Atualizando repositórios.."
if ! apt-get update
then
    echo "Não foi possível atualizar os repositórios. Verifique seu arquivo /etc/apt/sources.list"
    exit 1
fi
echo "Atualização feita com sucesso"

apt-get install -y npm

echo "Atualizando pacotes já instalados"
if ! apt-get dist-upgrade -y
then
    echo "Não foi possível atualizar pacotes."
    exit 1
fi
echo "Atualização de pacotes feita com sucesso"

echo "Instalando git ..."

if ! apt-get install -y git
then 
    echo "Não foi possível instalar o git ..."
fi
echo "Git instalado com sucesso..."

echo "Instalando o nodejs .. "
if ! apt-get install -y nodejs
then 
    echo "Não foi possível instalar o nodejs .."
fi 
echo "NodeJS instalado ..."

echo "Instalando o npm ..."

if ! npm install npm --global
then 
    echo "Não foi possível instalar o pacote npm ..."
fi
    echo "npm instalado com sucesso ..."
if ! npm install -g truffle
then 
    echo "Não foi possível instalar o truffle ..."
fi 
echo "truffle instalado com sucesso..."

echo "Instalando ethereumjs-testrpc ..."
if ! npm install -g ethereumjs-testrpc
then
    echo "Não foi possível instalar o ethereumjs-testrpc ..."
fi
echo "ethereumjs-testrpc instalado com sucesso..."

if ! npm install -g ganache-cli
then
   echo "Não foi possível instalar o ganache-cli ..."
fi
echo "ganache-cli instalado com sucesso.."

echo "Instalando o remixd ..."

if ! npm install -g remixd
then
   echo "Não foi possível instalar o remixd ..."
fi
echo "remixd instalado com sucesso.."


echo "Script finalizado!"
