apt update && apt upgrade 

sudo apt install git sudo btop tmux stow trash

useradd -m -s /bin/bash cmdr
printf '\n\n\nenter password for cmdr\n'
passwd cmdr
adduser cmdr sudo

git clone https://github.com/Commander-23/dotfiles.git /home/cmdr
git clone https://github.com/Commander-23/runs.git /home/cmdr

chown cmdr:cmdr /home/cmdr/dotfiles
chown cmdr:cmdr /home/cmdr/runs 
