#                                       __             __               
#                                      |  \           |  \              
# ______ ____   __    __           ____| $$  ______  _| $$_     _______ 
# |      \    \ |  \  |  \ ______  /      $$ /      \|   $$ \   /       \
# | $$$$$$\$$$$\| $$  | $$|      \|  $$$$$$$|  $$$$$$\\$$$$$$  |  $$$$$$$ # | $$ | $$ | $$| $$  | $$ \$$$$$$| $$  | $$| $$  | $$ | $$ __  \$$    \ 
# | $$ | $$ | $$| $$__/ $$        | $$__| $$| $$__/ $$ | $$|  \ _\$$$$$$\
# | $$ | $$ | $$ \$$    $$         \$$    $$ \$$    $$  \$$  $$|       $$
#  \$$  \$$  \$$ _\$$$$$$$          \$$$$$$$  \$$$$$$    \$$$$  \$$$$$$$ 
#              |  \__| $$                                               
#               \$$    $$                                               
#                \$$$$$$                                                
#                
#
# ASCII generated on:( https://patorjk.com/software/taag/)

# Installation script.


echo " 
This is a dotfile installation script. Do you want to continue the installation? 
"
read -rp "Do you want to continue? [Y/n] " answer
case "$answer" in
  [Nn]) echo "Exiting."; exit 1;;
  [Yy]);;   
  *) echo "Invalid input."; exit 2;;
esac

# Essential environment variables 
export MY_DOTS_DIR="$HOME/my-dots"
export MY_PROGRAMS_DIR="$MY_DOTS_DIR/packages"
export MY_BACKUP_DIR="$HOME/.local/share/mydots_backup/"
source "$MY_DOTS_DIR/scripts/helpers.bash"

# Overwrite files
owfiles_list=(
  # Hypr
  "$HOME/hypr"

  # Bash 
  "$HOME/.config/user-dirs.dirs"
  "$HOME/.bashrc/"
  "$HOME/.bash_logout"
  "$HOME/.bash_profile"

  # Kitty
  "$HOME/.config/kitty/kitty.conf"

  # Vim 
  "$HOME/.vim"
  "$HOME/.vimrc"

  # Git 
  "$HOME/.gitconfig"

  # Waybar 
  "$HOME/.config/waybar"
)

# Which package requests the overwrite
owfiles_package=(
    "hypr"
    "bash"
    "bash"
    "bash"
    "bash"
    "kitty" 
    "vim" 
    "vim"
    "git"
    "waybar"
)

mkdir -p "$MY_BACKUP_DIR"

for i in "${!owfiles_list[@]}"; do
  file="${owfiles_list[i]}"
  package="${owfiles_package[i]}"
  if [ -e "$file" ]; then
    if confirm_overwrite "$file"; then
      read -rp $'What should we do with it? ... (default=1)
      1: Backup the file into '"$MY_BACKUP_DIR"'
      2: Delete the file, place my-dots symlink. Warning!
      3: Dont stow that file, I can handle it manually' answer
      case "$answer" in
        1)
          mv "$file" "$MY_BACKUP_DIR/$(date +%Y-%m-%d_%H-%M-%S)_$(basename "$file")"
          store "$package"; 
          ;;
        2)
          rm -r "$file"
	  echo "$package"
          store "$package"; 
          ;;
        3)
          echo "[my-dots] Skipping $file/ $package"
          ;;
        *)
          echo "Invalid input."
          exit 2
          ;;
      esac
    fi
else store "$package"
  fi
done
exec hyprctl reload
#
# There will be a wiki page appearing for this soon. Check out: (https://github.com/Aron22563/my-dots/wiki/Roadmap)
