# yknot's theme
#
#

#                                 current folder            git prompt
#PROMPT='%{$fg[magenta]%}%p%m %{$fg_bold[red]%}:: %{$reset_color%}%{$fg[blue]%}%c %{$fg[black]%}$(git_prompt_info) %{$fg_bold[red]%}» %{$reset_color%}'
PROMPT='[%{$fg_bold[red]%}%m%{$reset_color%} %{$fg[blue]%}%c%{$reset_color%}$(git_prompt_info)%{$reset_color%}]$ '


ZSH_THEME_GIT_PROMPT_PREFIX=" (%{$fg[black]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✗%{$fg[black]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[black]%})"



#						     time                pm/am
RPROMPT=$'%{$fg[black]%}%D{%L:%M:%S} %F{black}%D{%p}%f%{$reset_color%}'
