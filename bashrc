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

#pyenv autoenv
#export PYENV_VIRTUALENV_DISABLE_PROMPT=1
if [ -f /usr/local/bin/pyenv ]; then
    __pyenv_version_ps1() {
    local ret=$?;
    output=$(pyenv local 2> /dev/null)
    if [[ ! -z $output ]]; then
        echo -n "($output)"
    fi
    return $ret;
    }

    PS1="\$(__pyenv_version_ps1)${PS1}"
    export PYENV_ROOT=/usr/local/var/pyenv
    if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
    if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
    source /usr/local/opt/autoenv/activate.sh
fi

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
