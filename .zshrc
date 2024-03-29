# Lines configured by zsh-newuser-install
bindkey -e
HISTFILE=~/.histfile
HISTCONTROL=ignoredups
HISTSIZE=1000
SAVEHIST=1000
setopt autocd correctall nomatch
unsetopt beep extendedglob notify
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jojo/.zshrc'

#Theme
autoload -Uz compinit && compinit
autoload -Uz promptinit && promptinit

PS1='%F{blue}%n%f@%F{magenta}%m%f %F{red}%B%~%b%f %% '

alias history='history 0'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias ip='ip  --color=always'
alias lockx='xscreensaver-command -lock'
alias ..='cd ..'
alias n='nvim'
alias vim='nvim'
alias awk='gawk'
alias ll='ls -lah'
alias mkdr='mkdir'

export VISUAL='emacs'
export EDITOR='emacs'
export ALTERNATE_EDITOR='vim'

#export PATH=$PATH:/.emacs.d/bin/
#[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
