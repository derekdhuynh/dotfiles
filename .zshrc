# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[yellow]%}%n%{$fg[green]%}%~ %{$reset_color%}$%b "

# %{$fg[red]%}%M    # Hostname
# %{$fg[cyan]%}@    # @ symbol
# %{$fg[blue]%}]    # Inner bracket
# %{$fg[blue]%}[    # Outer bracket

# grep highlight matches
#export GREP_OPTIONS='--color=always'
#export GREP_COLOR='1;35;40'

# Command history
export HISTFILE=~/.zsh_history
SAVEHIST=100000
HISTFILESIZE=100000
HISTSIZE=100000
setopt INC_APPEND_HISTORY_TIME # Immediate append
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY # History file stamp

# Enable vim keybindings
bindkey -v
export KEYTIMEOUT=1

# History search keybinds
bindkey '^A' history-incremental-search-backward
# bindkey -M isearch '^R' history-incremental-search-forward

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

# yank copies to system clipboard
function vi-yank-pbcopy {
    zle vi-yank
   echo "$CUTBUFFER" | pbcopy
}

zle -N vi-yank-pbcopy
zle -N vi-put-pbpaste
bindkey -M vicmd v edit-command-line
bindkey -M vicmd y vi-yank-pbcopy

# Shortened commands
alias l='ls -a'
alias ls='ls -a'
alias c='clear'
alias p3='python3'

# alias vim='nvim'
