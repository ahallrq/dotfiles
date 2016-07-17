export ZSH=/home/andrew/.oh-my-zsh

ZSH_THEME="candy"

plugins=(git)

# Yes I have the current dir in my PATH. No I couldn't care less about if it's unsecure.
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/andrew/.local/bin:."

source $ZSH/oh-my-zsh.sh

alias nano="nano -w"
alias emacs="emacs -nw"
alias py3="python3"

# Add mkdir -c switch - make directory and switch
mkdir () {
    case $1 in
       (-c) command mkdir -p "$2" && cd "$2";;
       (*)  command mkdir "$@";;
    esac
}

cdls() { cd "$@" && ls; }

#cat .motd
