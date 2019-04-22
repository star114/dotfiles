export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
alias ls='ls --color'
if [ -f /usr/local/bin/gls ]; then
    alias ls='gls --color=auto'
fi
alias l='ls -lah'
alias h=history

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

if [ -f /usr/local/bin/brew ]; then
    [ -f ~/.bashrc.brew ] && source ~/.bashrc.brew
fi

if [ -f ~/.bashrc.local ]; then
    source ~/.bashrc.local
fi

if [ -f ~/.bashrc.fzf ]; then
    source ~/.bashrc.fzf
fi

[ -f ~/.scm_breeze/scm_breeze.sh ] && source ~/.scm_breeze/scm_breeze.sh
