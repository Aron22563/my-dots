#                                       __             __               
#                                      |  \           |  \              
# ______ ____   __    __           ____| $$  ______  _| $$_     _______ 
# |      \    \ |  \  |  \ ______  /      $$ /      \|   $$ \   /       \
# | $$$$$$\$$$$\| $$  | $$|      \|  $$$$$$$|  $$$$$$\\$$$$$$  |  $$$$$$$
# | $$ | $$ | $$| $$  | $$ \$$$$$$| $$  | $$| $$  | $$ | $$ __  \$$    \ 
# | $$ | $$ | $$| $$__/ $$        | $$__| $$| $$__/ $$ | $$|  \ _\$$$$$$\
# | $$ | $$ | $$ \$$    $$         \$$    $$ \$$    $$  \$$  $$|       $$
#  \$$  \$$  \$$ _\$$$$$$$          \$$$$$$$  \$$$$$$    \$$$$  \$$$$$$$ 
#              |  \__| $$                                               
#               \$$    $$                                               
#                \$$$$$$                                                
#                
#
#ASCII generated on:( https://patorjk.com/software/taag/)

# Installation script.


echo " 
This is a dotfile installation script. Do you want to continue the installation? 
"

read -rp "Do you want to continue? [y/n] " answer
case "$answer" in
  [Yy]) echo "Continuing...";;
  [Nn]) echo "Exiting."; exit 1;;
  *) echo "Invalid input."; exit 2;;
esac


# There will be a wiki page appearing for this soon. Check out: (https://github.com/Aron22563/my-dots/wiki/Roadmap)
