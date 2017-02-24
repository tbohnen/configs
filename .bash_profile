alias bitbucket="~/Source/BitBucket"
alias stockanalyzer="~/Source/BitBucket/StockAnalyzer"
alias bprof="vim ~/.bash_profile && . ~/.bash_profile"
#alias gs="git status"
alias gacp="git add -A && git commit && git push"
alias gac="git add -A && git commit"
alias rappidherokupg="heroku pg:psql DATABASE_URL --app rappid"

export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
