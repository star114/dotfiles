# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# fzf path - need to forward declaration before plugins/fzf
export FZF_BASE="~/.fzf"

# zplug
source ~/.zplug/init.zsh

# Make sure to use double quotes
# themes
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug "romkatv/powerlevel10k", as:theme, depth:1

# lib
zplug "lib/completion", from:oh-my-zsh
zplug 'lib/key-bindings', from:oh-my-zsh
zplug "lib/directories", from:oh-my-zsh

# plugins
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/gitignore", from:oh-my-zsh
zplug "plugins/mosh", from:oh-my-zsh
zplug "plugins/vundle", from:oh-my-zsh
zplug "plugins/vi-mode", from:oh-my-zsh
zplug "plugins/fzf", from:oh-my-zsh
zplug "plugins/history", from:oh-my-zsh
zplug "plugins/iterm2", from:oh-my-zsh
zplug "plugins/zsh-navigation-tools", from:oh-my-zsh
zplug "plugins/z", from:oh-my-zsh
zplug "plugins/jenv", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/jump", from:oh-my-zsh
zplug "plugins/tmuxinator", from:oh-my-zsh

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "djui/alias-tips"
zplug "changyuheng/zsh-interactive-cd"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load # --verbose

# User configuration

#export TERM=xterm-256color
# for tmux
export TERM=screen-256color

# editor
export EDITOR='vim'

# local path
export PATH=/usr/local/bin:$PATH
LD_LIBRARY_PATH=/usr/local/lib:/usr/local/lib64:"${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH

# gcc colors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

if [ -f /usr/local/bin/brew ]; then
    [ -f ~/.zshrc.brew ] && source ~/.zshrc.brew
fi

if [ -f ~/.zshrc.local ]; then
    source ~/.zshrc.local
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ -f ~/.fzf.sh ]; then
    source ~/.fzf.sh
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
