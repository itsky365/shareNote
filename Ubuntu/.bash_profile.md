# java
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export PATH="$PATH:${JAVA_HOME}/bin"

# node
export PATH="$PATH:$HOME/local/node/bin" # Add node to PATH for scripting

# tomcat
export PATH="$PATH:$HOME/local/tomcat/bin" # Add tomcat to PATH for scripting

# rvm
# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# python3
export PATH=$PATH:$HOME/local/Python-3.5.2/bin
# nvm
# export NVM_DIR=$HOME/.nvm
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# swift
export SWIFT_HOME=$HOME/local/swift
export PATH=$SWIFT_HOME/usr/bin:$PATH
export LD_LIBRARY_PATH=$SWIFT_HOME/usr/lib:$LD_LIBRARY_PATH
export LIBRARY_PATH=$SWIFT_HOME/usr/lib:$LIBRARY_PATH

BABEL_ENV=$HOME/WorkRepository/awifi_toe_portal/gulp/node_modules

# android sdk
export ANDROID_HOME=$HOME/Android/Sdk
PATH=$PATH:$ANDROID_HOME/tools
PATH=$PATH:$ANDROID_HOME/platform-tools

# redis
export REDIS_HOME=$HOME/local/redis/src
export PATH=$REDIS_HOME:$PATH

# lua
export LUA_HOME=$HOME/local/lua/src
export PATH=$LUA_HOME:$PATH

# nginx
# export PATH="$PATH:$HOME/local/nginx/sbin"

# phantomjs
export PATH=$HOME/local/phantomjs/bin:$PATH

# python
# export PATH=$HOME/.local/bin:$PATH

# golang
export GOROOT=$HOME/local/go
export GOPATH=$HOME/local/gopath
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# pgsql
export PG_HOME=$HOME/local/pgsql/bin
export PATH=$PG_HOME:$PATH
export PGUSER=postgres
export PGPASSWORD=postgres
export PGHOST=127.0.0.1
export PGPORT=5432
export PGSSLMODE=disable

# ruby
export RUBY_HOME=$HOME/local/ruby/bin
export PATH=$RUBY_HOME:$PATH

# liteide
export LITEIDE_HOME=$HOME/Software/liteide/bin
export PATH=$LITEIDE_HOME:$PATH

# eMqtt
export EMQTT_HOME=$HOME/local/emqttd
export PATH=$EMQTT_HOME/bin:$PATH
