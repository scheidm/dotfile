export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PERL5LIB="$HOME/perllib/vault/share/perl5/:$HOME/perllib/nexus-core/share/perl5/:$HOME/perllib/qa/share/perl5/"
export EDITOR='/usr/local/bin/vim'
export WORKINGENV='~/code/env/vault-web-proto'

PS1='\w\[\033[00m\]/@${HOSTNAME%%.*}/=^_^= '
PS2='\w\[\033[00m\]/@${HOSTNAME%%.*}/=^_^= '

TUX="mrs642@tux.cs.drexel.edu"
LWC="selfforg@wellcomposed.net"

ARCHFLAGS="-arch x86_64"
export DBIC_OVERWRITE_HELPER_METHODS_OK=1
function sem() { 
cd $1
for i in $(find -L . -maxdepth 1 -mindepth 1 -type d)
do
    echo "i:$i" && cd $i && make ; sudo make install ; cd ../;
done
cd ..
}
function ses() { 
cd $1
for i in $(find -L . -maxdepth 1 -mindepth 1 -type d)
do
  cd $i;
  svn info | grep "^URL" | sed 's/URL: http:\/\/[a-z\.]*@subversion[a-z\.]*\/LPI\/branches\///';
  svn status | grep -v '?'
  cd ../;
done
cd ..
}
export -f ses;
export -f sem;

#Misc
alias l="ls $2"
alias c="cp $2 ~/temp/lab8"
alias be="vim ~/.bashrc"
alias bs="source ~/.bashrc"
alias pe="vim ~/.pentadactylrc"
alias up="dnf clean all && dnf update -y"
alias rfn="ruhoh compile&&scp -r ./compiled/* selfforg@wellcomposed.net:~/public_html/flight"
alias tux="ssh mrs642@tux.cs.drexel.edu"
alias ntp="sudo ntpdate -u time.apple.com"
alias pbp="cd backend&&make&&sudo make install&&cd .."
alias pokano="cd ..&&make&&sudo make install&&cd t"
alias pbt="pbp&&prove -rv backend/t/"
alias dbx1="export DBIC_TRACE=1"
alias dbx0="unset DBIC_TRACE"
alias yumu="sudo ntpdate -u time.apple.gov&&sudo yum clean all&&sudo yum update -y"
alias serve="ruby -run -e httpd . -p 5000"
alias puerh="ssh -t sinh@puerh 'tmuxinator start qtd'"
alias composed="ssh selfforg@wellcomposed.net"
alias serve_this="sudo chgrp -R www-data .&&sudo chmod -R g+s ."
alias nuke_firewall="sudo systemctl stop firewalld && sudo systemctl disable firewalld && sudo systemctl mask firewalld"


#Build
alias brm='sudo rm -rf `cat makeloc`'
alias bmk='perl Makefile.PL PREFIX=`cat makeloc`'
alias bmi='make && sudo make install'
alias build-nuke="rm -rf blib;rm Makefile;rm MANIFEST;perl Makefile.PL;make manifest;vim MANIFEST"

#Docker
alias d="docker $1"
alias dd="docker pull $1"
alias du="docker push $1"
alias dt="dockviz images --tree"

#Version Control config
alias g="git status"
alias s="svn status"
alias sa="svn add"
alias sc="svn commit -m"
alias sg="echo '.svn/*' >> .gitignore"
alias ss="svn switch"
alias ga="git add"
alias ga="git add"
alias gb="git branch"
alias gc="git commit $1"
alias gd="git pull origin $1"
alias gf="git fetch"
alias gg="git grep $1"
alias gl="git log"
alias gm="git merge"
alias gr="git reset"
alias gu="git push origin $1"
alias sc="svn commit -m $1"
alias sp="chown -R mscheid .svn"
#ses = environment status, see top of file
#sem = environment install, see top of file
alias gal="git add !!:1"
alias gcl="git clean"
alias gco="git checkout"
alias gcp="git cherry-pick"
alias gdf="git diff"
alias sdf="svn diff"
alias grl="git reflog"
alias gsh="git show --raw"
alias gst="git stash"
function smiss(){
  svn st | grep ^! | awk '{print " --force "$2}' | xargs svn rm
}

#Ruby/Rails
alias dbd="rake db:migrate:down"
alias dbr="rake db:rollback"
alias dbt="rake db:test:prepare"
alias dbm="rake db:migrate"

#TMux/Screen
alias td="tmux detach"
alias te="vim ~/.tmux.conf"
alias tf="tmux switch -t flightnight"
alias ti="tmux info"
alias tq="tmux switch -t qtd"
alias ts="tmux source-file ~/.tmux.conf"
alias tt="tmux resize-pane -Z" #toggle full-size pane
alias sdev="screen -x dev"
alias tdev="tmux attach -t dev || tmux new-session -s dev \; split-window -h \; select-pane -t 2\; rename-window -t 1 editor \; resize-pane -L 60\; send-keys -t 2 'vim' C-m \; send-keys -t 1 'bash /usr/bin/msch_server.sh' C-m "
alias tnq="tmux new -s qtd"
alias tnf="tmux new -s flightnight"
alias tns="tmux new-window; tmux split-window -h; tmux resize-pane -L 60;"
alias tdev2="tmux attach -t dev_link || tmux new-session -t dev -s dev_link"
alias tlocal="unset TMUX; tmux -f ~/.tmux.conf -L local new-session -s dev"

#Vagrant
alias v="vagrant"
alias vd="vagrant destroy"
alias vs="vagrant ssh"
alias vp="vagrant provision"
alias vu="vagrant up"
alias vreset="vagrant destroy -f && vagrant up"

function echo_and_run() { echo "$@" ;"$@";}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
COLUMNS=250


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
