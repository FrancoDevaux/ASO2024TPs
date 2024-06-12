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


echo -e "\n${blueColour}Ingrese un nombre para definir su genero${endColour}"
read nombre

genero=$(curl -s https://api.genderize.io/?name=$nombre | jq -r ".gender")
if [[ "$genero" == "male" ]]; then
    echo -e "${turquoiseColour}[+]$nombre${endColour} ${grayColour}-->${endColour} ${turquoiseColour}Hombre${endColour}"
else echo -e "${purpleColour}[+]$nombre ${grayColour}-->${endColour} ${purpleColour}Mujer${endColour}"
fi
