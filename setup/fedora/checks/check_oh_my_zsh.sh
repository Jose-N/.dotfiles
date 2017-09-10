#!/bash/bin
echo "Checking for Oh My ZSH"
sleep 1
if [[ $(ls ~/.oh-my-zsh 2>/dev/null) ]]
then
  echo "You Have Oh My ZSH Installed"
else
  echo "Oh My ZSH Not Found"
  sleep 2
  echo "Installing Oh My ZSH"
  sleep 2
  /bin/bash fedora/installs/install_oh_my_zsh.sh
fi
