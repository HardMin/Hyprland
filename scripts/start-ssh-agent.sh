#!/bin/bash

# Este script inicia el ssh-agent si no está ya en ejecución,
# y añade tu clave SSH. Debe ejecutarse una sola vez al inicio de tu sesión gráfica.

# Verifica si SSH_AUTH_SOCK ya está configurado y el agente está corriendo
if [ -n "$SSH_AUTH_SOCK" ] && ps -p $(echo $SSH_AUTH_SOCK | cut -d'/' -f3) >/dev/null; then
  echo "SSH agent already running with PID $(echo $SSH_AUTH_SOCK | cut -d'/' -f3)."
else
  # Inicia el ssh-agent y guarda sus variables de entorno
  eval $(ssh-agent -s) >~/.ssh/ssh-agent-env
  chmod 600 ~/.ssh/ssh-agent-env
  echo "SSH agent started with PID $SSH_AGENT_PID."
fi

# Carga las variables de entorno del ssh-agent si el archivo existe
if [ -f ~/.ssh/ssh-agent-env ]; then
  . ~/.ssh/ssh-agent-env
fi

# Añade la clave SSH, solo si no está ya añadida
# Usamos 'ssh-add -l' para listar las claves cargadas y evitamos añadirla si ya está.
if ! ssh-add -l | grep -q "$(ssh-keygen -lf ~/.ssh/id_ed25519 | awk '{print $2}')"; then
  ssh-add ~/.ssh/id_ed25519 # Asegúrate de que esta es la ruta correcta a tu clave privada
fi
