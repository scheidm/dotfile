source ~/.bashrc
source ~/.bash_local
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
export PATH="/usr/local/opt/node@6/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/m4/bin:$PATH"
export PATH=/opt/local/lib/postgresql90/bin/:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="/usr/local/opt/node@18/bin:$PATH"

# Created by `pipx` on 2024-06-12 16:29:04
export PATH="$PATH:/Users/scheidm/.local/bin"
if [ -f "/Users/scheidm/.config/fabric/fabric-bootstrap.inc" ]; then . "/Users/scheidm/.config/fabric/fabric-bootstrap.inc"; fi