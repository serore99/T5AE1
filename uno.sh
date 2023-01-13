#!/bin/bash
read -p "Que nombre de usuario quieres consultar? " nomUser
numApariciones=`cat usuarios.txt | grep $nomUser | wc -l`
if [ $numApariciones -eq 0 ]
    then
    echo "$nomUser no se ha logueado"
    else
    echo "$nomUser se ha logueado $numApariciones veces"
fi

    