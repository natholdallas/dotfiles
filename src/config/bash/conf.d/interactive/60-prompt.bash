prompter="${prompter:-starship}"
[[ ! -x "$(command -v "$prompter")" ]] || eval "$($prompter init bash)"
