GITHUB="https://github.com"

[[ -z "$TGENV_HOME" ]] && export TGENV_HOME="$HOME/.tgenv"

_zsh_tgenv_install() {
    echo "Installing tgenv..."
    git clone "${GITHUB}/cunymatthieu/tgenv.git" "${TGENV_HOME}"
}

_zsh_tgenv_load() {
    # export PATH
    export PATH="$TGENV_HOME/bin:$PATH"
}

# install tgenv if it isnt already installed
[[ ! -f "$TGENV_HOME/bin/tgenv" ]] && _zsh_tgenv_install

# load tgenv if it is installed
if [[ -f "$TGENV_HOME/bin/tgenv" ]]; then
    _zsh_tgenv_load
fi
