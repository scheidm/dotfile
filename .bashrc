export EDITOR='/usr/bin/vim'

PS1="\[$(tput setaf 2)\]\w\\100\h/=^_^= \[$(tput sgr0)\]"        
PS2="\[$(tput setaf 2)\]\w\\100\h/=^_^= \[$(tput sgr0)\]"        

PROMPT_DIRTRIM=2
ARCHFLAGS="-arch x86_64"
export DBIC_OVERWRITE_HELPER_METHODS_OK=1
#osx
alias nuke_audio = "sudo killall coreaudiod"
alias nuke_postgres="brew services stop postgresql; rm /usr/local/var/postgres/postmaster.pid; launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist; rm ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist; brew services start postgresql;"

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
alias ports="netstat -tulpn"
alias to_multi="git stash;git switch multi-provider;cd ../ui;git stash;git switch multi-provider;cd ../api;"
alias to_main="git stash; rake db:migrate:down VERSION=20220211161732;rake db:migrate:down VERSION=20220210204743; rake db:migrate:down VERSION=20220209215738;cd ../ui;git stash;git switch main;cd ../api"

#Build
alias brm='sudo rm -rf `cat makeloc`&&rm -rf blib'
alias bmk='perl Makefile.PL PREFIX=`cat makeloc`'
alias bmi='make && sudo make install'
alias build-nuke="make clean;perl Makefile.PL;make manifest;vim MANIFEST"
alias btg='read TAG_TARGET <tag-target;echo svn cp `svn info --show-item=url` http://subversion.int.bed.liquidpixels.net/$TAG_TARGET$1'

#vault
alias vrs="sudo mysql neuron_vault < sql/dropTables.sql&&echo 'drop 1' &&sudo mysql neuron_vault< sql/createDB.sql&&echo 'create 1' && sudo mysql nexus_core < ../tools/sql/dropDB.sql && echo 'drop 2' && sudo mysql nexus_core < /home/mscheid/migrations/bacon12-6-18.sql && echo 'create 2'&& sudo mysql nexus_core < ../tools/sql/upgradeBacon.sql&& echo 'upgrade complete' && sudo mysql nexus_core < ../tools/sql/automated-demos.sql && echo 'auto demos imported'&& sudo mysql nexus_core < ../tools/sql/automated-nexus-vault.sql && echo 'auto-nexus-vault imported' && sudo mysql nexus_core < ../tools/sql/automated-permissioning.sql && sudo mysql nexus_core < ../tools/sql/automated-nexus-support.sql && echo 'auto nexus-support imported' && sudo mysql nexus_core< ../tools/sql/vaultRoles.sql && echo 'roles created'"
alias vmig="bmk&&bmi&&perl bin/migration.pl > phones.csv"

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
alias si="svn info"
alias ss="svn switch"
alias sii="svn info --show-item"

alias grh="git reset --hard HEAD~1"
alias grs="git reset --soft HEAD~1"
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
alias gdf="git diff -b"
alias sdf="svn diff -x -u"
alias grl="git reflog"
alias gsh="git show --raw"
alias gst="git stash"
alias gsp="git stash pop"
alias gsw="git switch"
function smiss(){
  svn st | grep ^! | awk '{print " --force "$2}' | xargs svn rm
}

#testing
alias ter="bundle exec rails test"
alias tee="npm run test"
alias trs="cd ../api/&&rake testcafe_reset&&cd ../ui&&npm run test"
alias tsr="bundle exec rails test -n $1"
alias tse="npm run test -T $1"


#perl
alias pv="while read line ; do perl -c "$line"; done <<< $(svn status -q | sed "s/M\s*//";)"
alias pca='while read line ; do echo $line; perl -c "$line"; done'
alias smf='svn status -q | sed "s/^\w\s*//";'

#Ruby/Rails
alias railsrs = "bin/spring stop;"
alias rt="bundle exec rails test"
alias rc="bundle exec rails console"
alias ru="foreman start -f Procfile.dev"
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
alias tsp="tmux split-pane -h \; resize-pane -L 60\; swap-pane -U"
alias tfix="stty sane"
alias sdev="screen -x dev"
alias tdev="tmux attach -t dev || tmux new-session -s dev \; split-window -h \; select-pane -t 2\; rename-window -t 1 editor \; resize-pane -L 60\; send-keys -t 2 'vim' C-m \; send-keys -t 1 'bash /usr/bin/msch_server.sh' C-m "
alias tnq="tmux new -s qtd"
alias tnf="tmux new -s flightnight"
alias tnl="tmux new-window; tmux split-window;tmux split-window; tmux select-layout even-vertical"
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
function sem() { 
cd $1
for i in $(find -L . -maxdepth 1 -mindepth 1 -type d)
do
    echo "i:$i" && cd $i && perl Makefile.PL PREFIX=`cat makeloc` ; bmk&&bmi; cd ../;
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
function seu() { 
cd $1
for i in $(find -L . -maxdepth 1 -mindepth 1 -type d)
do
  cd $i;
  svn up
  cd ../;
done
cd ..
}
function sec() { 
cd $1
for i in $(find -L . -maxdepth 1 -mindepth 1 -type d)
do
  cd $i;
  brm&&bmk&&bmi;
  cd ../;
done
cd ..
}
function seb(){
echo searching for changes
cd $1
checkdir=`find . -maxdepth 1 -type d | tail -n 1`
repoRoot=`svn info $checkdir --show-item repos-root-url`
for i in $(find -L . -maxdepth 1 -mindepth 1 -type d)
do
  cd $i
  if [ -e tagdir ]; then
    localRev=`svn info . --show-item last-changed-revision`
    repoLocation=`svn info . --show-item relative-url`
    foreignDir=`cat tagdir`
    foreignLoc=$repoRoot/$foreignDir
    #echo $foreignLoc
    foreignRev=`svn info $foreignLoc --show-item last-changed-revision`
    let revDelta=$localRev-$foreignRev
    #echo $revDelta $foreignLoc
    if [ $revDelta -gt 0 ]; then
      tag=`svn ls $foreignLoc |sort -r | head -n 1`
      name=`expr match "$repoLocation" '.*/\(.*\)/.*'`
      version=`expr match "$repoLocation" '.*/Release-\(.*\)'`
      rc=`expr match "$tag" '.*rc\(.*\)/'`
      tag=${tag%.*}
      let target=$rc+1
      tagNumber=$tag.rc$target
      echo svn cp $repoRoot${repoLocation:1} $foreignLoc/$tagNumber -m \"Release $name $version.rc$target\"
    fi
  fi
  cd ..
done
cd ..
echo end report
}
function sereset() { 
cd $1
for i in $(find -L . -maxdepth 1 -mindepth 1 -type d)
do
    echo "i:$i" && cd $i &&brm && rm -rf blib/;bmk;bmi;cd ../;
done
cd ..
}
export -f sec;
export -f ses;
export -f seb;
export -f sem;
export -f seu;
export -f sereset;

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
COLUMNS=250
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

