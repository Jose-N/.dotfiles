#!/bash/bin
echo "
▓█████▄ ▓█████ ██▒   █▓▓█████  ██▓     ▒█████   ██▓███   ███▄ ▄███▓▓█████  ███▄    █ ▄▄▄█████▓
▒██▀ ██▌▓█   ▀▓██░   █▒▓█   ▀ ▓██▒    ▒██▒  ██▒▓██░  ██▒▓██▒▀█▀ ██▒▓█   ▀  ██ ▀█   █ ▓  ██▒ ▓▒
░██   █▌▒███   ▓██  █▒░▒███   ▒██░    ▒██░  ██▒▓██░ ██▓▒▓██    ▓██░▒███   ▓██  ▀█ ██▒▒ ▓██░ ▒░
░▓█▄   ▌▒▓█  ▄  ▒██ █░░▒▓█  ▄ ▒██░    ▒██   ██░▒██▄█▓▒ ▒▒██    ▒██ ▒▓█  ▄ ▓██▒  ▐▌██▒░ ▓██▓ ░
░▒████▓ ░▒████▒  ▒▀█░  ░▒████▒░██████▒░ ████▓▒░▒██▒ ░  ░▒██▒   ░██▒░▒████▒▒██░   ▓██░  ▒██▒ ░
 ▒▒▓  ▒ ░░ ▒░ ░  ░ ▐░  ░░ ▒░ ░░ ▒░▓  ░░ ▒░▒░▒░ ▒▓▒░ ░  ░░ ▒░   ░  ░░░ ▒░ ░░ ▒░   ▒ ▒   ▒ ░░
 ░ ▒  ▒  ░ ░  ░  ░ ░░   ░ ░  ░░ ░ ▒  ░  ░ ▒ ▒░ ░▒ ░     ░  ░      ░ ░ ░  ░░ ░░   ░ ▒░    ░
 ░ ░  ░    ░       ░░     ░     ░ ░   ░ ░ ░ ▒  ░░       ░      ░      ░      ░   ░ ░   ░
   ░       ░  ░     ░     ░  ░    ░  ░    ░ ░                  ░      ░  ░         ░
 ░                 ░
"
echo "Starting install for development dependencies

Setup List
---------------
[] Install zsh
[] Install ohmyzsh
[] Install Chruby
[] Install Ruby
[] Install Rails
[] Install NVM
[] Install Node.js & NPM
[] Install Yarn
[] Install Postgresql
"
echo "Checking for ZSH"
sleep 1
if [[ $(zsh --version 2>/dev/null) ]]
then
  echo "You Have ZSH Installed"
else
  echo "ZSH Not Found"
  sleep 2
  echo "Installing ZSH"
  sudo apt install zsh
  sleep 2
fi

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
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

echo "Checking for ruby"
sleep 1
if [[ $(ruby -v 2>/dev/null) ]]
then
  echo "You Have Ruby Installed"
else
  echo "Ruby Not Found"
  sleep 2
  echo "Installing Ruby"
  sleep 2
  /bin/bash fedora/installs/install_ruby.sh
fi
