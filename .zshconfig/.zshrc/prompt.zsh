autoload -U colors && colors
setopt promptsubst

PROMPT='[%*] %{$fg[green]%}%c%{$reset_color%} %{$fg[yellow]%}${$(git_prompt_enhanced_status)// /}%{$reset_color%}%(!.#.$) '

RPROMPT="$(kube_ps1)"
