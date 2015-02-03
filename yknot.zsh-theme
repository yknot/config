# yknot's theme
#
#

#                                 current folder            git prompt
PROMPT='%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[red]%}➜  %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})%{$fg[yellow]%} ✗ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) "



#						     time                pm/am
RPROMPT=$'%{$fg_bold[cyan]%}%D{%L:%M:%S} %F{red}%D{%p}%f%{$reset_color%}'
