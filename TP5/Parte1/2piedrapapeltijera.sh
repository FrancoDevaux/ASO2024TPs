#Hecho con Raphael Nicaise
#!/bin/bash

CPU=$((RANDOM%3))
case $CPU in
    0)
        CPU="piedra";;
    1)
        CPU="papel";;
    2)
        CPU="tijera";;
esac

echo "Ingrese piedra, papel o tijera"
read usuario
while [[ "$usuario" != "piedra" && "$usuario" != "papel" && "$usuario" != "tijera" ]]; do
    echo "Error en los datos, ingrese nuevamente"
    read usuario
done



if [[ "$CPU" == "$usuario" ]]; then
    echo "Empatamos"
    elif [[ "$usuario" == "piedra" && "$CPU" == "tijera" || "$usuario" == "papel" && "$CPU" == "piedra" || "$usuario" == "tijera" && "$CPU" == "papel"  ]];
    then
          echo "Ganaste!"
    else
          echo "Gano la CPU"
fi
echo "Respuesta de la CPU: $CPU"
