# Prompt
export PS1="\[\033[38;5;32m\]\d\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;214m\]\A\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;70m\]\l\[$(tput sgr0)\]\[\033[38;5;246m\]:\[$(tput sgr0)\]\[\033[38;5;100m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput sgr0)\]\[\033[38;5;247m\][\[$(tput sgr0)\]\[\033[38;5;31m\]\u\[$(tput sgr0)\]\[\033[38;5;246m\]@\[$(tput sgr0)\]\[\033[38;5;208m\]\h\[$(tput sgr0)\]\[\033[38;5;246m\]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;100m\]\W\[$(tput sgr0)\]\[\033[38;5;246m\]]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# Aliases
alias ls="ls --color=auto -G"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias ll="ls -lh"
alias la="ls -A"
alias l="ls -CF"
alias rm="rm -i"

# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
export HISTFILESIZE=500000
export HISTSIZE=500000

# Editor (for MC)
export EDITOR="vim"

# Personal opt programs added to path
PATH=$PATH:$HOME/opt
export PATH
