#!/bin/sh

DOT_FILES=(
    .tmux.conf
    .vimrc
    .gitconfig
    .zprezto/runcoms/zlogin
    .zprezto/runcoms/zlogout
    .zprezto/runcoms/zprofile
    .zprezto/runcoms/zshenv
    .zprezto/runcoms/zshrc
    .zprezto/runcoms/zpreztorc
)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/forDotfiles/dotfiles/${file} $HOME/${file}
done
