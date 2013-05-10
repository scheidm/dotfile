PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:./bin
export PATH

PS1='\w\[\033[00m\]/@${HOSTNAME:0:8}/=^_^= '
PS2='\w\[\033[00m\]/@${HOSTNAME:0:8}/=^_^= '

ARCHFLAGS="-arch x86_64"

alias up="scp $2 mrs642@tux.cs.drexel.edu:/home/mrs642/upload"
alias l="ls $2"
alias c="cp $2 ~/temp/lab8"
alias tux="ssh mrs642@tux.cs.drexel.edu"
alias composed="ssh selfforg@wellcomposed.net"
alias ff="/Applications/Firefox.app/Contents/MacOS/firefox -p -no-remote"
alias fft="/Applications/Firefox.app/Contents/MacOS/firefox -p \"elocal\" -no-remote"
alias dotc="cp ~/.pentadactylrc ~/dotfile;cp ~/.Vromerc ~/dotfile;cp ~/.bash_profile ~/dotfile;cp ~/.vimrc ~/dotfile;git --git-dir=/Users/mscheid/dotfile/.git commit -am"
alias dotu=" git --git-dir=/Users/mscheid/dotfile/.git push origin master;"
alias bs="source ~/.bash_profile"
alias be="vim ~/.bash_profile"

#Git config
alias gg="git grep $1"
alias gu="git push origin $1"
alias gd="git pull origin $1"
alias gc="git commit $1"
alias gs="git status"
alias ga="git add"
alias gl="git log"
alias gco="git checkout"
alias gr="git reset"
alias grl="git reflog"

TUX="mrs642@tux.cs.drexel.edu"
#if [ -z "$STY" ]; then
#		exec screen
#		fi
LWC="selfforg@wellcomposed.net"
alias down="scp $LWC:~/py/code/* ./"

source ~/.rvm/scripts/rvm

function echo_and_run() { echo "$@" ;"$@";}
