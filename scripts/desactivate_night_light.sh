#!/bin/bash

# Termina gammastep para quitar el filtro

# Opcional: Si quieres reiniciar gammastep con la configuración por defecto (ej. 6500K), puedes añadirlo:
gammastep -O 6500 &
# Pero para "quitarlo" simplemente matarlo es suficiente, ya que el sistema debería volver a su estado normal.
