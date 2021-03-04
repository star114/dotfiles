# fzf path - need to forward declaration before plugins/fzf
export FZF_BASE="~/.fzf"
fpath+=$HOME/.zsh/pure

# zplug
source ~/.zplug/init.zsh

# Make sure to use double quotes
# themes
# zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

# lib
zplug "lib/completion", from:oh-my-zsh
zplug 'lib/key-bindings', from:oh-my-zsh
zplug "lib/directories", from:oh-my-zsh

# plugins
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/mosh", from:oh-my-zsh
zplug "plugins/fzf", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "djui/alias-tips"
zplug "changyuheng/zsh-interactive-cd"
zplug 'wfxr/forgit', defer:1

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

# pure
autoload -U promptinit; promptinit

# change the path color
zstyle :prompt:pure:path color white

# change the color for both `prompt:success` and `prompt:error`
zstyle ':prompt:pure:prompt:*' color cyan

# turn on git stash status
zstyle :prompt:pure:git:stash show yes

prompt pure

if [ -f ~/.dotfiles/zshrc.custom ]; then
    source ~/.dotfiles/zshrc.custom
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
