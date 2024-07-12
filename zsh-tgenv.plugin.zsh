#!/usr/bin/env zsh

#####################
# COMMONS
#####################
autoload colors

#########################
# CONSTANT
#########################

GITHUB="https://github.com"
BOLD="bold"
NONE="none"

#########################
# PLUGIN MAIN
#########################

[[ -z "$TGENV_HOME" ]] && export TGENV_HOME="$HOME/.tgenv"

#########################
# Functions
#########################

_zsh_tgenv_log() {
  local font=$1
  local color=$2
  local msg=$3

  if [ $font = $BOLD ]
  then
    echo $fg_bold[$color] "[zsh-tgenv-plugin] $msg" $reset_color
  else
    echo $fg[$color] "[zsh-tgenv-plugin] $msg" $reset_color
  fi
}

_zsh_tgenv_install() {
  _zsh_tgenv_log $NONE "blue" "#################################"
  _zsh_tgenv_log $BOLD "blue" "Installing tgenv..." 
  git clone "${GITHUB}/tgenv/tgenv.git" "${TGENV_HOME}" >> /dev/null
  _zsh_tgenv_log $BOLD "green" "Install OK"
  _zsh_tgenv_log $NONE "blue" "#################################"
}

update_zsh_tgenv() {
  _zsh_tgenv_log $NONE "blue" "#################################"
  _zsh_tgenv_log $BOLD "blue" "Updating tgenv..."

  pushd "${TGENV_HOME}" > /dev/null
  if git pull --rebase --stat origin main
    then
      _zsh_tgenv_log $BOLD "green" "tgenv has been updated and/or is at the last version."
      popd > /dev/null
    else
      _zsh_tgenv_log $BOLD "red" "Error on updating. Please try again later."
  fi
  _zsh_tgenv_log $NONE "blue" "#################################"

  unset _zsh_tgenv_log
}

_zsh_tgenv_load() {
    # export PATH if needed
    local -r plugin_dir="$TGENV_HOME/bin:$PATH"
    # Add the plugin bin directory path if it doesn't exist in $PATH.
    if [[ -z ${path[(r)$plugin_dir]} ]]; then
        path+=($plugin_dir)
    fi    
}


# install tgenv if it isnt already installed
[[ ! -f "$TGENV_HOME/bin/tgenv" ]] && _zsh_tgenv_install

# load tgenv if it is installed
if [[ -f "$TGENV_HOME/bin/tgenv" ]]; then
    _zsh_tgenv_load
fi

unset -f _zsh_tgenv_install _zsh_tgenv_load
