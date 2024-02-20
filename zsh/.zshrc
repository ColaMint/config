# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# setup path
export PATH=$HOME/bin:/usr/local/bin:$PATH

# disable url quote
DISABLE_MAGIC_FUNCTIONS=true

# antigen 
[[ -f ~/.antigen.zsh ]] ||
    curl -L git.io/antigen > ~/.antigen.zsh
source ~/.antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle git-flow
antigen bundle pip
antigen bundle adb 
antigen bundle aws 
antigen bundle autojump 
antigen bundle brew 
antigen bundle colored-man-pages 
antigen bundle command-not-found
antigen bundle common-aliases 
antigen bundle docker 
antigen bundle docker-compose 
antigen bundle docker-machine 
antigen bundle fzf 
antigen bundle golang 
antigen bundle node 
antigen bundle npm 
antigen bundle pyenv 
antigen bundle virtualenv 
antigen bundle sublime 
antigen bundle vscode
antigen bundle history-substring-search 
antigen bundle paulirish/git-open 
# antigen bundle marlonrichert/zsh-autocomplete@main
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen theme romkatv/powerlevel10k 
antigen apply

# zsh-users/zsh-autosuggestions
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=60'
bindkey '^k' autosuggest-accept

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# NOTE: use cc to clear screen. I use tmux ctrl+hjkl switch panel, but ctrl+l conflict with clear-screen
# bindkey "cc" clear-screen

# the fuck config, must brew install thefuck
eval $(thefuck --alias)

# autojump config, brew install autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# fzf config, must brew install fzf
# NOTE: put this line in the end of your zshrc, or it may not work, https://github.com/junegunn/fzf/issues/1304
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# source your own shrc file if exists
[ -f ~/.env.sh ] && source ~/.env.sh

# lsd
alias ls='lsd'

# fix kiity ssh issue
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

# ranger 
alias rg='ranger'

# joshuto 
alias f='~/.config/joshuto/joshuto'
