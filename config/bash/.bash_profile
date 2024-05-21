#
# ~/.bash_profile
#

for file in ~/dotfiles/config/bash/conf.d/*; do
  if [[ -f file ]]; then
    . $file
  fi
done
[[ -f ~/dotfiles/user/bash/.bash_profile ]] && . ~/dotfiles/user/bash/.bash_profile

[[ -f ~/.bashrc ]] && . ~/.bashrc
