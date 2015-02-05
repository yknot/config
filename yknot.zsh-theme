# yknot's theme
#
#

#                                 current folder            git prompt
PROMPT='%{$fg_bold[green]%}%p %{$fg[yellow]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[red]%}➜  %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})%{$fg[yellow]%} ✗ "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})%{$fg[green]%} ✔ "



#						     time                pm/am
RPROMPT=$'%{$fg_bold[blue]%}%D{%L:%M:%S} %F{blue}%D{%p}%f%{$reset_color%}'
