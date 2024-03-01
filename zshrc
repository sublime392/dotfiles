# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export ANDROID_HOME=/Users/baconcheesefry/Library/Android/sdk
# export CERTIFICATE_FOLDER=/Users/baconcheesefry/code/android/certificates
# alias setJDK8='unset JAVA_HOME;export JAVA_HOME=`/usr/libexec/java_home -v 1.8`'
# alias setJDK11='unset JAVA_HOME;export JAVA_HOME=`/usr/libexec/java_home -v 11`'
# setJDK11
#export M2_HOME=/Users/baconcheesefry/code/apache-maven-3.6.2/

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# PATH=$ANDROID_HOME/platform-tools:$PATH
# PATH=$ANDROID_HOME/tools:$PATH
# echo $PATH
# PATH=$PATH:~/.composer/vendor/bin
# PATH=/usr/local/opt/curl/bin:$PATH
# PATH=$PATH:$M2_HOME/bin
# PATH=/usr/local/opt/php@7.4/bin:$PATH
# PATH=/usr/local/opt/php@7.4/sbin:$PATH
# PATH=/usr/local/opt/python/libexec/bin:$PATH
# PATH=/opt/homebrew/bin:$PATH
# PATH=/usr/local/sbin:$PATH
# PATH=$PATH:/usr/local/bin
# PATH="$PATH:~/.yarn/bin"
# export PATH="/opt/homebrew/opt/mariadb@10.5/bin:$PATH"

# export GUILE_LOAD_PATH="/usr/local/share/guile/site/3.0"
# export GUILE_LOAD_COMPILED_PATH="/usr/local/lib/guile/3.0/site-ccache"
# export GUILE_SYSTEM_EXTENSIONS_PATH="/usr/local/lib/guile/3.0/extensions"

# export NVM_DIR="$HOME/.nvm"
# [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh" # This loads nvm
# [ -s "/opt/homebrew/opt/nvm/etc/bash_completion" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion"

# export LDFLAGS="-L/opt/homebrew/opt/php/lib"
# # export CPPFLAGS="-I/opt/homebrew/opt/php/include"
# # export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
# export JAVA_HOME="/opt/homebrew/opt/openjdk@17"
# export CPPFLAGS="-I/opt/homebrew/opt/openjdk@17/include"

# echo $JAVA_HOME

# Path to your oh-my-zsh installation.
export ZSH="/Users/baconcheesefry/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
#CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  common-aliases
  history-substring-search
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

###-tns-completion-start-###
if [ -f /Users/baconcheesefry/.tnsrc ]; then
  source /Users/baconcheesefry/.tnsrc
fi
###-tns-completion-end-###

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

# export PATH="/opt/homebrew/sbin:$PATH"
# export PATH="/opt/homebrew/bin:$PATH"
# PATH=/opt/homebrew/opt/php/sbin:$PATH
# PATH=/opt/homebrew/opt/php/bin:$PATH
# export PATH=/opt/homebrew/opt/ruby@2.7/bin:$PATH
# export PATH=/opt/homebrew/lib/ruby/gems/2.7.0/bin:$PATH

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi

export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

# export PATH="/opt/homebrew/opt/php@8.1/bin:$PATH"
# export PATH="/opt/homebrew/opt/php@8.1/sbin:$PATH"

# export PATH="/opt/homebrew/opt/php@8.1/bin:$PATH"
# export PATH="/opt/homebrew/opt/php@8.1/sbin:$PATH"

# echo $JAVA_HOME

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
