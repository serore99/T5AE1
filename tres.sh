#!/bin/bash
read -p "Introduce el mes a buscar: " mes
read -p "Introduce el dia del mes: " dia
fecha=$dia" "$mes
limite=`cat usuarios.txt | grep "$fecha" | wc -l`
user=""
if [ $limite -eq 0 ]
    then
    echo "El $fecha no han habido logs"
    else
    for i in `seq 1 $limite`
        do
        us=`cat usuarios.txt| grep "$fecha"| head -n$i|tail -n1| awk '{print $1}' `
        user=$user" "$us
    done
    echo "En la fecha $fecha se conectaron los usuarios$user"
fi
