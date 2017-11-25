export PS1='[\u@\h][\W]\$ '

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
alias ls='ls --color=auto -F'

alias ll='ls -al'
alias la='ls -A'

alias tree='tree -F'

alias calc='bc -l <<<'

bashrc_local="$HOME/etc/bash.bashrc"
[ -f "$bashrc_local" ] && . "$bashrc_local"
