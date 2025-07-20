# Add neovim
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/sfeir/google-cloud-sdk/path.zsh.inc' ]; then . '/home/sfeir/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/sfeir/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/sfeir/google-cloud-sdk/completion.zsh.inc'; fi

# fnm
FNM_PATH="/home/sfeir/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/sfeir/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

# Created by `pipx` on 2025-02-18 08:15:30
export PATH="$PATH:/home/sfeir/.local/bin"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. "/home/sfeir/.deno/env"


alias vimrc="cd ~/.config/nvim && nvim"
alias l="eza --header --long --icons --all"
alias lt="l -T --git-ignore"
alias lt1="lt -L1"
alias lt2="lt -L2"
alias lt3="lt -L3"
