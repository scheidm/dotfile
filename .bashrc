export EDITOR='/usr/bin/vim'
export TESTCAFE_TIMEOUT=200
export TWILIO_URL_BASE='goat-diverse-gar.ngrok-free.app'

PS1="\[$(tput setaf 2)\]\w\\100\h/=^_^= \[$(tput sgr0)\]"        
PS2="\[$(tput setaf 2)\]\w\\100\h/=^_^= \[$(tput sgr0)\]"        

PROMPT_DIRTRIM=2
ARCHFLAGS="-arch x86_64"
export DBIC_OVERWRITE_HELPER_METHODS_OK=1

alias kill="echo"
alias ps="echo"

#osx
alias nuke_audio="sudo killall coreaudiod"
alias nuke_postgres="brew services stop postgresql@14; rm /usr/local/var/postgres/postmaster.pid; launchctl unload -w
~/Library/LaunchAgents/homebrew.mxcl.postgresql@14.plist; rm ~/Library/LaunchAgents/homebrew.mxcl.postgresql@14.plist; brew services start postgresql@14;"
alias restore_postgres="pg_restore --verbose --clean --no-acl --no-owner -h localhost -d "#database_name filename

#Misc
alias l="ls $2"
alias c="cp $2 ~/temp/lab8"
alias be="vim ~/.bashrc"
alias bs="source ~/.bashrc"
alias pe="vim ~/.pentadactylrc"
alias up="dnf clean all && dnf update -y"
alias ntp="sudo ntpdate -u time.apple.com"
alias dbx1="export DBIC_TRACE=1"
alias dbx0="unset DBIC_TRACE"
alias nuke_firewall="sudo systemctl stop firewalld && sudo systemctl disable firewalld && sudo systemctl mask firewalld"
alias ports="netstat -tulpn"

alias heb="heroku run rails c --app uwill-backoffice"
alias hes="heroku run rails c --app uwill-api-staging"
alias hep="heroku run rails c --app uwill-api"

#Docker
alias d="docker $1"
alias dd="docker pull $1"
alias du="docker push $1"
alias dt="dockviz images --tree"

#Version Control config
alias g="git status"
alias gclean="git log --branches --not --remotes --pretty=format:\"%h %as%x09%al%x09 %d% <(50,trunc)%s\""

alias grh="git reset --hard HEAD~1"
alias grs="git reset --soft HEAD~1"
alias gun="git restore --staged $1; git restore $1"
alias ga="git add"
alias ga="git add"
alias gb="git branch"
alias gc="git commit $1"
alias gd="git pull origin $1"
alias gf="git fetch"
alias gg="git grep $1"
alias gl="git log"
alias gm="git merge --no-ff"
alias gr="git reset"
alias gu="git push origin $1"
#ses = environment status, see top of file
#sem = environment install, see top of file
alias gal="git add !!:1"
alias gbh="git branch -r | grep -v HEAD | while read b; do git log --color --format=\"%ci _%C(magenta) %cr^ %C(bold cyan)\$b%Creset^ %s^ %C(bold blue)%an%Creset %h\" \$b | head -n 1; done | sort -r | cut -d_ -f2- | sed 's;origin/;;g' | awk -F^ -vOFS=^ 'NR{\$3=substr(\$3,1,60)}1' | head -10 | column -t -s '^'"
alias gcl="git clean"
alias gco="git checkout"
alias gcp="git cherry-pick"
alias gdf="git diff -b"
alias grl="git reflog"
alias gsh="git show --raw"
alias gst="git stash"
alias gsp="git stash pop"
alias gsw="git switch"
alias gdiverge="NAME=`git rev-parse HEAD`;git reset --hard HEAD~1; git pull origin; git cherry-pick $NAME"


#testing
alias ter="bundle exec rails test"
alias tee="npm run test"
alias trs="cd ../api/&&rake testcafe_reset&&cd ../ui&&npm run test"
alias tsr="bundle exec rails test -n $1"
alias tse="npm run test -T $1"


#Ruby/Rails
alias railsrs="bin/spring stop;"
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
alias ti="tmux info"
alias tq="tmux switch -t qtd"
alias ts="tmux source-file ~/.tmux.conf"
alias tt="tmux resize-pane -Z" #toggle full-size pane
alias tsp="tmux split-pane -h \; resize-pane -L 60\; swap-pane -U"
alias tnl="tmux new-window; tmux split-window;tmux split-window; tmux select-layout even-vertical"
alias tns="tmux new-window; tmux split-window -h; tmux resize-pane -L 60;"
alias tlocal="unset TMUX; tmux -f ~/.tmux.conf -L local new-session -s dev"

function echo_and_run() { echo "$@" ;"$@";}
function gpr(){
  for mergedBranch in $(git for-each-ref --format '%(refname:short)' --merged HEAD refs/heads/)
  do
    git branch -d ${mergedBranch}
  done
}
export -f gpr;

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/usr/local/opt/node@18/bin:$PATH"

COLUMNS=250
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Created by `pipx` on 2024-06-12 16:29:04
export PATH="$PATH:/Users/scheidm/.local/bin"
if [ -f "/Users/scheidm/.config/fabric/fabric-bootstrap.inc" ]; then . "/Users/scheidm/.config/fabric/fabric-bootstrap.inc"; fi
