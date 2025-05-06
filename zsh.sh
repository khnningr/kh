#!/usr/bin/env bash

DIR_DOTFILES="$HOME/kh/"

# Verifica si existe el directorio.
[ -d "$DIR_DOTFILES" ] || {
  exit 1
}

# Paquetes necesarios.
PAQUETES=(
  "zsh"
  "git"
  "fzf"
  "zoxide"
  "oh-my-posh-bin"
  "exa"
  )

sudo pacman -S --needed --noconfirm "${PAQUETES[@]}" 

# Stow
cd "$HOME"
[[ ! -f ~/.zshrc ]] || mv .zshrc .zshrc.bak
cd "$DIR_DOTFILES" 
stow .

# Definir el Shell.
# chsh <USUARIO> - este comando permite cambiar el Shell.
# para ejemplo: /usr/bin/bash o /usr/bin/zsh
# echo $SHELL - para ver el Shell que se está usando.

chsh -s $(which zsh)
