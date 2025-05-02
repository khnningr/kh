# Ubicación del gestor de plugins, zinit y los plugins.
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git" 
# Se le conoce a "${XDG_DATA_HOME:-${HOME}/.local/share}", como 'Parameter 
# Expansion' y me permite definir una nueva variable de entorno.
#
# '${XDG_DATA_HOME}' - es una variable de entorno que, si está definida, 
# contendrá la ruta a un directorio específico donde se almacenan los 
# datos de usuario. 
#
# ':-' - es un operador de sustitución de parámetros en Bash. Significa 
# "si la variable no está definida o está vacía, usa el valor que sigue
# a este operador". En este caso, si XDG_DATA_HOME no está definida, se 
# utilizará el valor predeterminado que sigue, ${HOME}/.local/share.

# Descarga Zinit en caso de que no exista.
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$dirname $ZINIT_HOME"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/carga zinit
source "${ZINIT_HOME}/zinit.zsh" 
# 'zinit zstatus' - comando para ver el estatus de zinit.



