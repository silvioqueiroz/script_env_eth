#!/bin/bash

echo "Atualizando reposit�rios.."
if ! apt-get update
then
    echo "N�o foi poss�vel atualizar os reposit�rios. Verifique seu arquivo /etc/apt/sources.list"
    exit 1
fi
echo "Atualiza��o feita com sucesso"

apt-get install -y npm

echo "Atualizando pacotes j� instalados"
if ! apt-get dist-upgrade -y
then
    echo "N�o foi poss�vel atualizar pacotes."
    exit 1
fi
echo "Atualiza��o de pacotes feita com sucesso"

echo "Instalando git ..."

if ! apt-get install -y git
then 
    echo "N�o foi poss�vel instalar o git ..."
fi
echo "Git instalado com sucesso..."

echo "Instalando o nodejs .. "
if ! apt-get install -y nodejs
then 
    echo "N�o foi poss�vel instalar o nodejs .."
fi 
echo "NodeJS instalado ..."

echo "Instalando o npm ..."

if ! npm install npm --global
then 
    echo "N�o foi poss�vel instalar o pacote npm ..."
fi
    echo "npm instalado com sucesso ..."
if ! npm install -g truffle
then 
    echo "N�o foi poss�vel instalar o truffle ..."
fi 
echo "truffle instalado com sucesso..."

echo "Instalando ethereumjs-testrpc ..."
if ! npm install -g ethereumjs-testrpc
then
    echo "N�o foi poss�vel instalar o ethereumjs-testrpc ..."
fi
echo "ethereumjs-testrpc instalado com sucesso..."

if ! npm install -g ganache-cli
then
   echo "N�o foi poss�vel instalar o ganache-cli ..."
fi
echo "ganache-cli instalado com sucesso.."

echo "Instalando o remixd ..."

if ! npm install -g remixd
then
   echo "N�o foi poss�vel instalar o remixd ..."
fi
echo "remixd instalado com sucesso.."


echo "Script finalizado!"
