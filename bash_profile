
export ANDROID_HOME=/Users/baconcheesefry/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH

function homestead() {
    ( cd ~/Homestead && vagrant $* )
}
PATH=$PATH:~/.composer/vendor/bin
export PATH=/usr/local/opt/curl/bin:$PATH
#export PATH=/usr/local/php5/bin:$PATH

#eval "$(rbenv init -)"

export NVM_DIR="/Users/baconcheesefry/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Maximum number of history lines in memory
export HISTSIZE=500000
# Maximum number of history lines on disk
export HISTFILESIZE=500000
# Ignore duplicate lines
# export HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file 
#  instead of overwriting it
shopt -s histappend

# After each command, append to the history file 
#  and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

export CERTIFICATE_FOLDER=/Users/baconcheesefry/code/android/certificates

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home

export PATH="/usr/local/opt/python/libexec/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

