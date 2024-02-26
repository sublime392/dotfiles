export ANDROID_SDK_ROOT=/Users/baconcheesefry/Library/Android/sdk
export ANDROID_HOME=/Users/baconcheesefry/Library/Android/sdk
export CERTIFICATE_FOLDER=/Users/baconcheesefry/code/android/certificates
export LDFLAGS="-L/opt/homebrew/opt/php/lib"
export JAVA_HOME="/opt/homebrew/opt/openjdk@17"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk@17/include"

# oh-my-zsh history plugin
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='fg=white,bg=blue,bold'
export HISTORY_SUBSTRING_SEARCH_GLOBBING_FLAGS='i'
export HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE='true'
export HISTORY_SUBSTRING_SEARCH_FUZZY='true'
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_TIMEOUT='5'

PATH=$PATH:~/.composer/vendor/bin
PATH=/usr/local/opt/curl/bin:$PATH
PATH=/opt/homebrew/bin:$PATH
PATH=/usr/local/sbin:$PATH
PATH=$PATH:/usr/local/bin
PATH="$PATH:~/.yarn/bin"
PATH="/opt/homebrew/opt/mariadb@10.5/bin:$PATH"
PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
PATH="/opt/homebrew/sbin:$PATH"
PATH="/opt/homebrew/bin:$PATH"
PATH=/opt/homebrew/opt/php/sbin:$PATH
PATH=/opt/homebrew/opt/php/bin:$PATH
PATH=/opt/homebrew/opt/ruby@2.7/bin:$PATH
PATH=/opt/homebrew/lib/ruby/gems/2.7.0/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh" # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion"
