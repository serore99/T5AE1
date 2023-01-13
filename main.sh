#!/bin/bash
until [ $opcion -eq 5 ]
do
    echo "1. Consultar logins por usuario"
    echo "2. Consultar logins por mes"
    echo "3. Consultar usuarios por dia y mes"
    echo "4. Consultar ultima conexion"
    echo "5. Salir"
    read -p "Selecciona una opcion: " opcion
    case $opcion in
        "1")
            . uno.sh
            ;;
        "2")
            . dos.sh
            ;;
        "3")
            . tres.sh
            ;;
        "4")
            . cuatro.sh
            ;;
        "5")
            ;;
        *)
            Echo "No es una opcion"
            ;;
    esac
done