PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:./bin:/sbin:/usr/sbin:/usr/local/sbin
PATH=/usr/local/bin:$PATH
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
alias v="vagrant"
alias vd="vagrant destroy"
alias vu="vagrant up"
alias vs="vagrant ssh"
alias vp="vagrant provision"
alias vreset="vagrant destroy -f && vagrant up"
alias dbm="rake db:migrate"
alias dbd="rake db:migrate:down"
alias dbr="rake db:rollback"
alias dbt="rake db:test:prepare"
#alias sudo='sudo env PATH=$PATH'

#Git config
alias gg="git grep $1"
alias gu="git push origin $1"
alias gd="git pull origin $1"
alias gc="git commit $1"
alias g="git status"
alias ga="git add"
alias gl="git log"
alias gco="git checkout"
alias gcp="git cherry-pick"
alias gr="git reset"
alias grl="git reflog"
alias gsh="git show --raw"
alias gst="git stash"
alias gal="git add !!:1"
alias gcl="git clean"
alias gdf="git diff"
alias greset="git reset"

TUX="mrs642@tux.cs.drexel.edu"
#if [ -z "$STY" ]; then
#		exec screen
#		fi
LWC="selfforg@wellcomposed.net"
alias down="scp $LWC:~/py/code/* ./"

source ~/.rvm/scripts/rvm

function echo_and_run() { echo "$@" ;"$@";}

##
# Your previous /Users/mscheid/.bash_profile file was backed up as /Users/mscheid/.bash_profile.macports-saved_2013-05-17_at_13:24:14
##

# MacPorts Installer addition on 2013-05-17_at_13:24:14: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

