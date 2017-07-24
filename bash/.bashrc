# prompt
bash_prompt_file="$HOME/etc/bash_prompt.bash"
[ -f "$bash_prompt_file" ] && . "$bash_prompt_file"

shopt -s globstar
shopt -o -s ignoreeof

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
shopt -o -s noclobber

alias top='top -d 1'
alias ping='ping -c 5'

alias df='df -h'
alias du='du -h'
alias free='free -h'

alias grep='grep --color=auto'
alias ls='ls --color=auto'

alias ll='ls -alF'
alias la='ls -A'

export LS_COLORS=$LS_COLORS:'di=0;36:'

alias tree='tree -F'

alias calc='bc -l <<<'

bashrc_local="$HOME/etc/bash.bashrc"
[ -f "$bashrc_local" ] && . "$bashrc_local"
