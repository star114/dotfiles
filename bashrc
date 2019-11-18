export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
if [ -f /usr/local/bin/gls ]; then
    alias ls='gls --color=auto'
fi

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

if [ -f ~/.bashrc.local ]; then
    source ~/.bashrc.local
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if [ -f ~/.fzf.sh ]; then
    source ~/.fzf.sh
fi

[ -f ~/.scm_breeze/scm_breeze.sh ] && source ~/.scm_breeze/scm_breeze.sh

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
