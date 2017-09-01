alias ls='gls --color=auto'
alias l='ls -lah'
alias h=history
alias cdsrc="cd ~/workspace"
alias sshhome="ssh star114shin.iptime.org -p10022"
alias moshhome="mosh star114@star114shin.iptime.org --ssh=\"ssh -p 10022\""
alias cformat="/usr/local/bin/clang-format"

#git-aware-prompt
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

#PS1='\[\033[01;33m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\\$ '
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export TERM=xterm-256color
__pyenv_version_ps1() {
  local ret=$?;
  output=$(pyenv local 2> /dev/null)
  if [[ ! -z $output ]]; then
    echo -n "($output)"
  fi
  return $ret;
}

PS1="\$(__pyenv_version_ps1)${PS1}"

#pyenv autoenv
#export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
source /usr/local/opt/autoenv/activate.sh

#homebrew
export PATH=/usr/local/bin:$PATH
export HOMEBREW_GITHUB_API_TOKEN="0c74469a925d7ec540a04d2f1abdaa1abd2c39bc"

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

#cuda 8.0
export PATH=/Developer/NVIDIA/CUDA-8.0/bin:$PATH
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-8.0/lib:$DYLD_LIBRARY_PATH

#llvm
#export PATH="/usr/local/opt/llvm/bin:$PATH"

#coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

#alias for xcode-select
alias xcode-select-recent="sudo xcode-select -s /Applications/Xcode.app/Contents/Developer"
alias xcode-select-8.2="sudo xcode-select -s /Applications/Xcode_8.2.app/Contents/Developer"

#bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
