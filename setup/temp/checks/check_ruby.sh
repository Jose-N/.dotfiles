#!/bash/bin
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
