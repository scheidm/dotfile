PATH=$PATH:./bin:/sbin:/usr/sbin:/usr/local/sbin
PATH=/usr/local/bin:$PATH
PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH="$PATH:$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
export EDITOR='vim'

PS1='\w\[\033[00m\]/@${HOSTNAME:0:8}/=^_^= '
PS2='\w\[\033[00m\]/@${HOSTNAME:0:8}/=^_^= '

TUX="mrs642@tux.cs.drexel.edu"
LWC="selfforg@wellcomposed.net"

ARCHFLAGS="-arch x86_64"

#Misc
alias l="ls $2"
alias c="cp $2 ~/temp/lab8"
alias be="vim ~/.bashrc"
alias bs="source ~/.bashrc"
alias rfn="ruhoh compile&&scp -r ./compiled/* selfforg@wellcomposed.net:~/public_html/flight"
alias tux="ssh mrs642@tux.cs.drexel.edu"
alias composed="ssh selfforg@wellcomposed.net"

#Git config
alias g="git status"
alias ga="git add"
alias gc="git commit $1"
alias gd="git pull origin $1"
alias gg="git grep $1"
alias gl="git log"
alias gm="git merge"
alias gr="git reset"
alias gu="git push origin $1"
alias gal="git add !!:1"
alias gcl="git clean"
alias gco="git checkout"
alias gcp="git cherry-pick"
alias gdf="git diff"
alias grl="git reflog"
alias gsh="git show --raw"
alias gst="git stash"
alias greset="git reset"

#Ruby/Rails
alias dbd="rake db:migrate:down"
alias dbr="rake db:rollback"
alias dbt="rake db:test:prepare"
alias dbm="rake db:migrate"

#Ruhoh
alias rcwc="ruhoh compile&&cp -rf ./compiled/* ~/code/personal-site&&cd
~/code/personal-site/"

#TMux
alias te="vim ~/.tmux.conf"
alias ts="tmux source-file ~/.tmux.conf"
alias tqtd="tmuxinator start qtd"
alias tfn="tmuxinator start fn"
alias tcwc="tmuxinator start cwc"

#Vagrant
alias v="vagrant"
alias vd="vagrant destroy"
alias vs="vagrant ssh"
alias vp="vagrant provision"
alias vu="vagrant up"
alias vreset="vagrant destroy -f && vagrant up"

function echo_and_run() { echo "$@" ;"$@";}

