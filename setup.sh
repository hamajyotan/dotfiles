#!/bin/bash

DOTFILES=(
  .bash_aliases
  .bashrc
  .gemrc
  .gitconfig
  .gitignore
  .profile
  .pryrc
  .tigrc
  .tmux.conf
  .uim
  .vimrc
)

for file in ${DOTFILES[@]}
do
  rm $HOME/$file
  ln -s $HOME/.dotfiles/$file $HOME/$file
done

