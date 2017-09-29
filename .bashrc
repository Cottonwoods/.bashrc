#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Setup colour scheme and ls shortcuts
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Setup colourized prompt
PS1='[\[\e[0;96m\]\u\[\e[0;36m\]@\[\e[0;96m\]\h\[\e[0m\] \[\e[0;92m\]\W\[\e[0m\]]\[\e[0;36m\]$\[\e[0m\] '

# Set LANG env variable
LANG=en_US.UTF-8

# Add django to PATH
export PATH="$PATH:/usr/lib/python3.4/site-packages/django/bin"
# Add go to GOPATH
export GOPATH="$HOME/dev/go"
export PATH="$PATH:$GOPATH/bin"
# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# RVM bash completion
[[ -r "$HOME/.rvm/scripts/completion" ]] && source "$HOME/.rvm/scripts/completion"

# Add Steam env var
export STEAM_FRAME_FORCE_CLOSE=1

#Add cargo utils to PATH
export PATH="$PATH:/home/kirby/.cargo/bin"

eval `ssh-agent` &> /dev/null
ssh-add ~/.ssh/id_rsa &> /dev/null

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
