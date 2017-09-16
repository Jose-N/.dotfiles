#!/bash/bin
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
  /bin/bash fedora/installs/install_rails.sh
fi
