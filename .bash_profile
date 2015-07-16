#Source bash profile
alias src='source ~/.bash_profile'
#cd; pwd; ls;
function cd() {
  builtin cd "$1" && pwd && ls;
}
#cd ..
alias ..='cd ..'
#cd ../..
alias ...='cd ../..'
#cd ../../..
alias ....='cd ../../..'
#cd into amitchellbullard.com repo and run git status
function cda() {
  cd /Applications/MAMP/htdocs/www_amb_com
  gstat
}
#cd into the home directory
alias cdh="cd ~"
#ls -af
alias lsa="ls -aF"
#ls -AlG
alias lsaa="ls -AlG"
#Open a new finder window at the current diectory
alias f="open -a Finder ./"
#Open the specified application
alias o="open -a"

#@vim
#Edit bash_profile in Vim
alias vpro='vim ~/.bash_profile'

#@git
#pwd; git branch; git status
  function gstat() {
    echo ""
    echo "WORKING DIRECTORY:"
    pwd
    ls
    echo ""
    echo "BRANCH:"
    git branch
    echo ""
    echo "STATUS:"
    git status                                                                     
  }
#git clone
alias gc='git clone'
#git status
alias gs='git status'
#git branch -a
alias gba='git branch -a'
#gbco git checkout -b
alias gbco='git checkout -b'

#@ruby                                                              
#Generate C-Tags for a project
alias ctags="`brew --prefix`/bin/ctags"                                                                             
#Genrate C-Tags for bundled libraries
alias ruby-ctags='ctags -R --languages=ruby --exclude=.git --exclude=log'

#@Silver Searcher  
#Silver searcher case insensitive search, with no need to type the opening and closing '\'
function agi() {
  ag -i \\"$1"\\
}
#@jss
#Reload tomcat
function retom() {
  sudo launchctl unload /Library/LaunchDaemons/com.jamfsoftware.tomcat.plist > /dev/null
  sudo launchctl load /Library/LaunchDaemons/com.jamfsoftware.tomcat.plist > /dev/null
}

#Install all Vim plugins with vundler
alias vplugs='vim +PluginInstall +qall'

export GOROOT=$HOME/Dev/go/go
export PATH=$PATH:$GOROOT/bin
export GOBIN=$GOROOT/bin
export GOPATH=$HOME/Dev/go/golib

function pho() {
  cd /Users/mbullard/Dev/elixir/hello_phoenix
  mix phoenix.server
}

function ggo() {
  go build /Users/mbullard/Dev/go/golib/src/github.com/curt-labs/DataMerge/main.go
  go run /Users/mbullard/Dev/go/golib/src/github.com/curt-labs/DataMerge/main.go
}

function btree()  {
  cd /Users/mbullard/Dev/go/golib/src/github.com/TopShelfBullard/binary_tree/
}

function rbt() {                                                                                    
  go build /Users/mbullard/Dev/go/golib/src/github.com/TopShelfBullard/binary_tree/main.go                  
  go run /Users/mbullard/Dev/go/golib/src/github.com/TopShelfBullard/binary_tree/main.go                    
}

function gb() {
  go build /Users/mbullard/Dev/go/golib/src/github.com/curt-labs/DataMerge/main.go
}

function dcaddy() {
  cd ~/Dev/ruby/github.com/TopShelfBullard/data_caddy/
  gstat
}

function wrb() {
  bundle exec guard
}

function rdb() {
  rake db:migrate VERSION=0
  rake db:migrate
  rake db:seed
  rails s
}

function dmerge() {
  cd /Users/mbullard/Dev/go/golib/src/github.com/curt-labs/DataMerge
  gstat
}

function gadd() {
  git add .
  gstat
}

function tdmerge() {
  go test github.com/curt-labs/DataMerge/types/ -coverprofile=coverage.out 
}

function tbtree() {
  go test github.com/TopShelfBullard/binary_tree/binary_tree/ -coverprofile=coverage.out 
}

function cdr() {
  cd ~/Dev/ruby/github.com/TopShelfBullard/
}

function cdg() {
  cd /Users/mbullard/Dev/go/golib/src/github.com/
}

function gobr() {
  rm -rf index
  go build index.go
  go run index.go
}
# The next line updates PATH for the Google Cloud SDK.
source '/Users/mbullard/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/Users/mbullard/google-cloud-sdk/completion.bash.inc'

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
