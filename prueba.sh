#!/bin/bash
NOMBRE=$1
APELLIDO=$2
MOSTRAR=$3

if [ "$MOSTRAR" = "true" ]; then
    echo "Hola $NOMBRE $APELLIDO"
else
    echo "nada $MOSTRAR"
fi