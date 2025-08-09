#!/bin/bash

# Termina cualquier instancia anterior de gammastep si está corriendo
pkill gammastep

# Inicia gammastep con la temperatura deseada (2800K)
# El '&' al final lo ejecuta en segundo plano para no bloquear tu terminal
gammastep -O 2800 &
