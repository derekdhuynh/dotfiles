# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[green]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Command history
export HISTFILE=~/.zsh_history
HISTFILESIZE=100000
HISTSIZE=100000
setopt INC_APPEND_HISTORY # Immediate append
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY # History file stamp

# Enable vim keybindings
bindkey -v
export KEYTIMEOUT=1

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -u
_comp_options+=(globdots)		# Include hidden files.

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# v in command mode will allow editing current command in vim
export VISUAL=vim
autoload edit-command-line; zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# Shortened commands
alias l='ls'
alias c='clear'
alias p3='python3'



