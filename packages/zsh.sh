#!/bin/sh

no_pw_sudo(){
 local CMD="$@"
 printf "\n\n\n" | sudo -S $CMD || echo "no_pw_sudo ERROR: ${CMD}"
}

pacman_install(){
 local PKG="$@"
 no_pw_sudo "pacman -Syyu ${PKG} --noconfirm"
}

# Install zsh
pacman_install 'zsh'
