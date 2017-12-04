alias ls='ls --color'
if [ -f /usr/local/bin/gls ]; then
    alias ls='gls --color=auto'
fi
alias l='ls -lah'
alias h=history
alias cformat="/usr/local/bin/clang-format"

#git-aware-prompt
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

#PS1='\[\033[01;33m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\\$ '
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export TERM=xterm-256color

# local path
export PATH=/usr/local/bin:$PATH
LD_LIBRARY_PATH=/usr/local/lib:/usr/local/lib64:"${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH

# gcc colors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

#google
#export PATH=/usr/local/google/depot_tools:$PATH

#go
export PATH=/usr/local/opt/go/libexec/bin:$PATH

#sqlite
export PATH=/usr/local/opt/sqlite/bin:$PATH

#curl
export PATH=/usr/local/opt/curl/bin:$PATH

#qt
export PATH=/usr/local/opt/qt/bin:$PATH

#mono
export MONO_GAC_PREFIX="/usr/local"

#llvm
#export PATH="/usr/local/opt/llvm/bin:$PATH"

#coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

#bash-completion
if [ -f /usr/local/bin/brew ]; then
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi
fi

if [ -f ~/.bashrc.local ]; then
    source ~/.bashrc.local
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if [ -f ~/.bashrc.fzf ]; then
    source ~/.bashrc.fzf
fi

if [ -f ~/.bashrc.spark ]; then
    source ~/.bashrc.spark
fi
