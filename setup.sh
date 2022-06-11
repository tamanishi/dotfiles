#!/bin/sh

DOT_FILES=(
    .tmux.conf
    .vimrc
    .gitconfig
)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/forDotfiles/dotfiles/${file} $HOME/${file}
done
