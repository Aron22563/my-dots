#
# ~/.bashrc
#

# Bash login shell stuff, should probably not be changed.
[[ $- != *i* ]] && return

export MY_DOTS_DIR="$HOME/my-dots/"
source "$MY_DOTS_DIR/scripts/helpers.bash"
source "$HOME/.config/bash/bash_loader.bash"

# PATH
export PATH="$PATH:$HOME/.local/bin/"

# Command prompt customization
PS1='[\u@\h \w]\$ '

# Turn on history expansion.
set -H

# Standard apps
export EDITOR="/usr/bin/vim"

# Standard command colors
eval "$(dircolors -b)"

# Aliases
alias ls='eza -x'
alias ll='eza -a --group-directories-first --sort=type'

## Bluefilter
alias night='pkill hyprsunset ; hyprsunset --gamma 90 --gamma_max 100 --temperature 4000 & disown'
alias day='pkill hyprsunset ;  hyprsunset --gamma 100 --gamma_max 100 --temperature 6000 & disown'

## Screenshots
alias screencopy='grim -g "$(slurp)" - | wl-copy'
alias screenstore='grim -g "$(slurp)" "$MY_SCREENSHOTS_DIR/$(date +%Y-%m-%d_%H-%M-%S).png"'


# Encryption keys
export GNUPGHOME="$HOME/.local/share/gnupg"
