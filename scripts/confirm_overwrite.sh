 confirm_overwrite() {
  local file="$1"
  if [ -e "$file" ]; then
    read -rp "File '$file' exists. Overwrite? (y/N): " answer
case "$answer" in
  [Yy]) return 0;;
  [Nn]) return 1;;
  *) echo "Invalid input."; return 1;;
esac
  else
    return 0
  fi
}
