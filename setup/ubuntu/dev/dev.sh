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
echo "Checking for updates"
sudo apt-get update 

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
  echo "Installing chruby"
  sleep 2
  wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
  tar -xzvf chruby-0.3.9.tar.gz
  cd chruby-0.3.9/
  sudo make install
  cd ..
  rm chruby-0.3.9.tar.gz && rm -rf chruby-0.3.9 
  echo "Enabling auto-switching of ruby versions"
  sleep 2
  echo "source /usr/local/share/chruby/chruby.sh" >> ~/.zshrc
  echo "source /usr/local/share/chruby/auto.sh" >> ~/.zshrc
  echo "Installing ruby-install"
  sleep 2
  wget -O ruby-install-0.6.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.1.tar.gz
  tar -xzvf ruby-install-0.6.1.tar.gz
  cd ruby-install-0.6.1/
  sudo make install
  cd ..
  rm ruby-install-0.6.1.tar.gz && rm -rf ruby-install-0.6.1
  echo "Installing ruby 2.3.3"
  sleep 2
  ruby-install ruby 2.3.3
  echo "Checking ruby version"
  chruby
  sleep 3
  echo "Avoid ever having to bundle exec commands"
  gem install rubygems-bundler
  gem regenerate_binstubs
fi

echo "Checking for rails"
sleep 1
if [[ $(rails -v 2>/dev/null) ]]
then
  echo "You Have Rails Installed"
else
  echo "Rails Not Found"
  sleep 2
  echo "Installing Rails"
  sleep 2
  gem install rails
fi

echo "Checking for Node.js"
sleep 1
if [[ $(node -v 2>/dev/null) ]]
then
  echo "You Have Node.js Installed"
else
  echo "Node.js Not Found"
  sleep 2
  echo "Installing Node.js"
  sleep 2
  curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
  sudo apt-get install -y nodejs
  echo "Installing build tools"
  sleep 2
  sudo apt-get install -y build-essential
  echo "Installing npm"
  sudo apt-get yarn
  echo "Installing yarn"
  sleep 2
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  sudo apt-get update && sudo apt-get install yarn
fi

echo "Checking for postgresql"
sleep 1
if [[ $(psql 2>/dev/null) ]]
then
  echo "You have postgresql installed"
else
  echo "Postgresql not found"
  sleep 2
  echo "Installing postgresql"
  sleep 2
  sudo apt-get install postgresql postgresql-contrib
fi
