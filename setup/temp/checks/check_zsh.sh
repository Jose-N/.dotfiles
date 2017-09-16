#!/bash/bin
echo "Checking for ZSH"
sleep 1
if [[ $(zsh --version 2>/dev/null) ]]
then
  echo "You Have ZSH Installed"
else
  echo "ZSH Not Found"
  sleep 2
  echo "Installing ZSH"
  sleep 2
  /bin/bash fedora/installs/install_zsh.sh
fi
