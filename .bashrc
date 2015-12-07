export PATH=/usr/local/rvm/gems/ruby-2.2.1/bin:/opt/local/bin:/opt/local/sbin:$PATH
export EDITOR='vim'

PS1='\w\[\033[00m\]/@${HOSTNAME%%.*}/=^_^= '
PS2='\w\[\033[00m\]/@${HOSTNAME%%.*}/=^_^= '

TUX="mrs642@tux.cs.drexel.edu"
LWC="selfforg@wellcomposed.net"

ARCHFLAGS="-arch x86_64"
export DBIC_OVERWRITE_HELPER_METHODS_OK=1

#Misc
alias l="ls $2"
alias c="cp $2 ~/temp/lab8"
alias be="vim ~/.bashrc"
alias bs="source ~/.bashrc"
alias pe="vim ~/.pentadactylrc"
alias rfn="ruhoh compile&&scp -r ./compiled/* selfforg@wellcomposed.net:~/public_html/flight"
alias tux="ssh mrs642@tux.cs.drexel.edu"
alias ntp="sudo ntpdate -u time.apple.com"
alias pbt="cd backend&&make&&sudo make install&&cd ..&&prove -rv backend/t/"
alias yumu="sudo ntpdate -u time.apple.gov&&sudo yum clean all&&sudo yum update -y"
alias serve="ruby -run -e httpd . -p 5000"
alias puerh="ssh -t sinh@puerh 'tmuxinator start qtd'"
alias composed="ssh selfforg@wellcomposed.net"
alias build-nuke="cd backend;rm -rf blib;rm Makefile;rm MANIFEST;perl Makefile.PL;make manifest;vim MANIFEST;cd .."
alias serve_this="sudo chgrp -R www-data .&&sudo chmod -R g+s ."

#Docker
alias d="docker $1"
alias dd="docker pull $1"
alias du="docker push $1"
alias dt="dockviz images --tree"

#Version Control config
alias g="git status"
alias s="svn status"
alias sa="svn add"
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

#TMux
alias td="tmux detach"
alias te="vim ~/.tmux.conf"
alias tf="tmux switch -t flightnight"
alias ti="tmux info"
alias tq="tmux switch -t qtd"
alias ts="tmux source-file ~/.tmux.conf"
alias tnq="tmux new -s qtd"
alias tnf="tmux new -s flightnight"

#Vagrant
alias v="vagrant"
alias vd="vagrant destroy"
alias vs="vagrant ssh"
alias vp="vagrant provision"
alias vu="vagrant up"
alias vreset="vagrant destroy -f && vagrant up"

function echo_and_run() { echo "$@" ;"$@";}
