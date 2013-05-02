#PATH=${PATH}:"/cygdrive/C/Program Files/Java/jdk1.7.0_04/bin"
#PATH=${PATH}:"/Applications/Postgres.app/Contents/MacOS/bin"
#PATH=${PATH}:"/cygdrive/C/Program Files/Java/apache-ant-1.8.4/bin"
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

TUX="mrs642@tux.cs.drexel.edu"
#if [ -z "$STY" ]; then
#		exec screen
#		fi
LWC="selfforg@wellcomposed.net"
alias down="scp $LWC:~/py/code/* ./"

source ~/.rvm/scripts/rvm
