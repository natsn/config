export NODE_ENV='development'
export epals2_PASS='uurH8J8mP7nFThKz783w'
export nicu_pals_PASS='kLMGR5KPH<,5"$u'

# All of our virtual enviornments are stored in here now:
alias ip="ifconfig | grep 'inet '"

# Awkward git aliases
alias g='git status'
alias gd='git diff'
alias gm='git merge'
alias gb='git branch'
alias gr='git remote --verbose'
alias gc='git checkout'

export CFLAGS=-Qunused-arguments
export CPPFLAGS=-Qunused-arguments
export EDITOR='vim'
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# This thing
alias b='vim ~/.bash_profile && source ~/.bash_profile'
alias c='clear'

# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# Ensure user-installed binaries take precedence
export PATH=/usr/local/sbin:/usr/local/bin:/usr/local/rvm/gems/ruby-1.9.3-p392/bin:/usr/local/rvm/gems/ruby-1.9.3-p392@global/bin:/usr/local/rvm/rubies/ruby-1.9.3-p392/bin:/usr/local/rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/opt/sm/bin:/opt/sm/pkg/active/sbin:~/bin:/System/Library/Frameworks/Python.framework/Versions/Current/Extras/bin:/usr/local/Cellar/ruby/2.1.1_1/bin:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin:/Users/nathann/android_sdk/platform-tools:/Users/nathann/android_sdk/tools

# File browsing
alias l='ls'
alias ll='ls -l'
alias ls="ls -GCF"

# Screen saver
alias ss='bc64=( {a..z} {A..Z} {0..9} + / = );c;while true; do echo -ne "\033[$((1+RANDOM%LINES));$((1+RANDOM%COLUMNS))H\033[$((RANDOM%2));3$((RANDOM%8))m${bc64[$((RANDOM%${#bc64[@]}))]}"; sleep 0.01 ; done'
alias love="/Applications/love.app/Contents/MacOS/love"
alias sml="/./usr/local/smlnj-110.75/bin/sml"

# Spoof mac address
alias mac="ifconfig en0 | grep ether"
alias spoofmac="sudo ifconfig en0 ether"

# Colorful grep
alias grep="grep --color=auto"

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
haste() {
    a=$(cat); curl -X POST -s -d "$a" http://hastebin.com/documents | awk -F '"' '{print "http://hastebin.com/"$4}'; 
}
test -f ~/.git-completion.bash && . $_
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
