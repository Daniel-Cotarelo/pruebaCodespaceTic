#!/bin/bash

echo "Bienvenido al generador de contraseñas seguras 🔒"
read -p "¿Cuántos caracteres quieres que tenga la contraseña? " longitud

# Caracteres que vamos a usar
caracteres='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()'

# Generar contraseña
contrasena=""
for i in $(seq 1 $longitud); do
    index=$(( RANDOM % ${#caracteres} ))
    letra="${caracteres:$index:1}"
    contrasena="$contrasena$letra"
done

echo "Tu contraseña generada es: $contrasena"
echo "Recuerda guardarla en un lugar seguro 🗝️"
