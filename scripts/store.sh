function store(){
  local file="$1"
  stow -t "$HOME" -d $MY_PROGRAMS_DIR -S $file || { echo "Failed to stow bash"; exit 1; }
  printf "\n"
  echo "[my-dots] package stowed: $file"
}
