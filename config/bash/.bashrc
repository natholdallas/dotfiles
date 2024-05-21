#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

for file in ~/dotfiles/config/bash/conf.d/*; do
  if [[ -f file ]]; then
    . $file
  fi
done
[[ -f ~/dotfiles/user/bash/.bashrc ]] && . ~/dotfiles/user/bash/.bashrc
