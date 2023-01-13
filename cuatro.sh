#!/bin/bash
read -p "Introduce el nombre del usuari: " nombre 
numlog=`cat usuarios.txt | grep $nombre | wc -l` 
max=0 
mesmax="" 
diamax=0 

for j in `seq 1 $numlog`  
do  
    mes=`cat usuarios.txt | grep $nombre | head -n$j | tail -1| awk '{print $3}'` 
    for i in enero febrero marzo abril mayo junio julio agosto septiembre octubre noviembre diciembre 
            do 
                cont=$((cont + 1)) 
                if [ $i = $mes ] 
                then 
                    if [ $max -lt $cont ] 
                    then  
                    max=$cont 
                    mesmax=$i 
                    fi 
                fi 
            done    
            cont=0  
done 
for k in `seq 1 $numlog`  
do 
    dia=`cat usuarios.txt | grep $nombre | grep $mesmax | head -n$k | tail -1| awk '{print $2}'`     
    if [ $diamax > $dia ] 
    then  
    diamax=$dia 
    fi 
done 

echo "la ultima conexion de $nombre fue el $diamax de $mesmax" 