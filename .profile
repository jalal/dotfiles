# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    MYPATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    MYPATH="$HOME/.local/bin:$MYPATH"
fi

# Copied over from .bashrc
export PATH=$HOME/.node/bin:$PATH
export NODE_PATH=$NODE_PATH:/home/jalal/.node/lib/node_modules

export ANDROID_HOME=/home/jalal/apps/android-sdk-linux/
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export PATH=$PATH:/opt/genymobile/genymotion
export PATH=$PATH:/usr/local/go/bin

export MYPATH=/home/jalal/.pyenv/bin:$MYPATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PATH=$MYPATH:$PATH

export GOPATH=$HOME/go

export CHROME_BIN=/usr/bin/chromium-browser

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# . $HOME/.shellrc.load
export EDITOR=/usr/bin/nvim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ -n "$TMUX" ]; then
    nvm use
fi
