# yknot's theme
#
#                                 current folder            git prompt
#PROMPT='%{$fg[magenta]%}%p%m %{$fg_bold[red]%}:: %{$reset_color%}%{$fg[blue]%}%c %{$fg[black]%}$(git_prompt_info) %{$fg_bold[red]%}» %{$reset_color%}'
PROMPT='[%{$fg_bold[red]%}%m%{$reset_color%} %{$fg[blue]%}%c%{$reset_color%}$(git_prompt_info)%{$reset_color%}]$ '


ZSH_THEME_GIT_PROMPT_PREFIX=" (%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✗%{$fg[black]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"



#						     time                pm/am
RPROMPT=$'%{$fg[green]%}%D{%L:%M:%S} %F{green}%D{%p}%f%{$reset_color%}'
