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
alias ls='ls --color=auto -F'

alias ll='ls -al'
alias la='ls -A'

export LS_COLORS=$LS_COLORS:'di=0;36:'

alias tree='tree -F'

alias calc='bc -l <<<'

if [ -d "$HOME/repos/github.com/mhyfritz" ]; then
    DIR_GITHUB_REPOS="$HOME/repos/github.com/mhyfritz"
    alias cdgh='cd $DIR_GITHUB_REPOS'
fi

if [ -d "$HOME/repos/gitlab.com/mhyfritz" ]; then
    DIR_GITLAB_REPOS="$HOME/repos/gitlab.com/mhyfritz"
    alias cdgl='cd $DIR_GITLAB_REPOS'
fi

bashrc_local="$HOME/etc/bash.bashrc"
[ -f "$bashrc_local" ] && . "$bashrc_local"
