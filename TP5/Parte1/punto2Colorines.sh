#Hecho con Rapahel Nicaise
#!/bin/bash

#Colours para dalrle en la terminal cuando lo ejecutamos
declare -r greenColour="\e[0;32m\033[1m"
declare -r endColour="\033[0m\e[0m"
declare -r redColour="\e[0;31m\033[1m"
declare -r blueColour="\e[0;34m\033[1m"
declare -r yellowColour="\e[0;33m\033[1m"
declare -r purpleColour="\e[0;35m\033[1m"
declare -r turquoiseColour="\e[0;36m\033[1m"
declare -r grayColour="\e[0;37m\033[1m"



CPU=$((RANDOM%3))
case $CPU in
    0)
        CPU="piedra";;
    1)
        CPU="papel";;
    2)
        CPU="tijera";;
esac

echo -e "\n\n${greenColour}Ejecucion del programa${endColour}"

echo -e "${purpleColour}Ingrese piedra, papel o tijera${endColour}" 
read usuario

while [[ "$usuario" != "piedra" && "$usuario" != "papel" && "$usuario" != "tijera" ]]; do
    echo -e "\n${redColour}[!]Error en los datos, ingrese nuevamente:${endColour}"
    read usuario
done

if [[ "$CPU" == "$usuario" ]]; then
    echo -e "\n${turquoiseColour}[-]Empatamos${endColour}"

    elif [[ "$usuario" == "piedra" && "$CPU" == "tijera" || "$usuario" == "papel" && "$CPU" == "piedra" || "$usuario" == "tijera" && "$CPU" == "papel"  ]];
    then
          echo -e "\n${greenColour}Ganaste!${endColour}"
    else
          echo -e "\n${yellowColour}Gano la CPU =(${endColour}"
fi
echo -e "\n${blueColour}[+]Respuesta de la CPU -->${endColour} ${turquoiseColour}$CPU${endColour}"
