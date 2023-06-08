#!/bin/bash
echo "Copying to the .oh-my-zsh/themes directory..."
cp ./justbash.zsh-theme ~/.oh-my-zsh/themes/
echo "Success!"
echo "To change the theme, go to your ~/.zshrc file and change ZSH_THEME to justbash."
echo "Do you want to do it now? (y/n)"
read -p "> " YN

if [[ $YN == "y" ]]; then
  nano ~/.zshrc
else 
  exit
fi
echo "Goodbye!"
