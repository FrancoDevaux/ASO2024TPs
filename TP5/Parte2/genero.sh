#Hecho con Rapahel Nicaise
#!/bin/bash
echo -e "\nIngrese un nombre para definir su genero"
read nombre

genero=$(curl -s https://api.genderize.io/?name=$nombre | jq -r ".gender")
if [[ "$genero" == "male" ]]; then
    echo "$nombre--> Hombre"
else echo "$nombre--> Mujer" 
fi
