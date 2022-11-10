# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

export X_NIMBLE_HOME="/home/ddnull/.nimble/bin"
export X_NIMBLE_TOOLS="/home/ddnull/.nimble/tools"
export PNPM_HOME="/home/ddnull/.local/share/pnpm"
export DART_SASS_HOME="/home/ddnull/.local/share/sass"
export GO_BIN="/usr/local/go/bin"
export POETRY_HOME="$HOME/.poetry/bin"

export PATH="$X_NIMBLE_HOME:$X_NIMBLE_TOOLS:$PNPM_HOME:$DART_SASS_HOME:$GO_BIN:$POETRY_HOME:$PATH"

eval "$(pyenv init --path)"

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
#if [ -n "$BASH_VERSION" ]; then
#    # include .bashrc if it exists
#    if [ -f "$HOME/.bashrc" ]; then
#	. "$HOME/.bashrc"
#    fi
#fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    export X_DEBUG_TEST="SET BIN"
    PATH="$HOME/bin:$PATH"
fi
export X_DEBUG_TEST_2="PAST IT"

export X_BHM_HMM="stuff"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Added by Toolbox App
export PATH="$PATH:/home/ddnull/.local/share/JetBrains/Toolbox/scripts"
