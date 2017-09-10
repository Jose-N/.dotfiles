#!/bash/bin
echo "You Hit Checking For Rails Files"
if [[ $(ruby -v | cut -d " " -f 1) = "ruby" ]]
then
  echo "You Have Ruby Installed"
else
  echo "Installing Ruby"
fi

if [[ $(rails -v | cut -d " " -f 1) = "Rails" ]]
then
  echo "You Have Rails Installed"
else
  echo "Installing Rails"
fi
