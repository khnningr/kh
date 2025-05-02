#!/usr/bin/env bash

DIR_DOTFILES="$HOME/kh/"

# Verifica si existe el directorio, saliendo del scrip,
# si no existe.
[ -d "$DIR_DOTFILES" ] || {
  exit 1
}

# Paquetes necesarios.
zen=(
  "zsh"
  "vivaldi"


  )

sudo pacman -S --needed --noconfirm "${zen[@]}" 

# Stow
cd "$HOME"
mv .zshrc .zshrc.bak
cd "$DIR_DOTFILES" 
stow .

# Definir el Shell.
# chsh <USUARIO> - este comando permite cambiar el Shell.
# para ejemplo: /usr/bin/bash o /usr/bin/zsh
# echo $SHELL - para ver el Shell que se está usando.




