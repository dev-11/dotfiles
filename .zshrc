# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"


# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias g='git'
alias 4200='lsof -nP -i4TCP:4200 | grep LISTEN'
alias dt='dotnet test'
alias gmm='git merge master'
alias rpdf='git rm --cached -r . && git reset --hard && git rm .gitattributes && git reset . && git checkout .'
alias fpdf='git rm --cached -r . && git reset --hard && git rm .gitattributes && git reset . && git checkout .'
alias weather='curl -4 http://wttr.in/London'
alias moon='curl -4 http://wttr.in/Moon'
alias sj='bundle exec jekyll serve'
alias dt=‘tree -d -I “__pycache__”’
alias dt1=‘tree -d -L 1 -I “__pycache__”’
alias gd=‘cdiff -s -w 0’
alias gr=‘git checkout’
alias ip=“ifconfig en0 | grep -w ‘inet’ | awk ‘{print $2}’”


function gs(){
  tput setaf 2;
  echo "GIT STATUS @ `date`";
  tput sgr0;
  
  git status;
}

function gpl(){
  tput setaf 2;
  echo "GIT PULL @ `date`";
  tput sgr0;
  
  git pull;
}

function gpsh(){
  tput setaf 1;
  echo "GIT PUSH @ `date`";
  tput sgr0;

  git push ;
}

function gst() {
  tput setaf 1;
  echo "GIT STAGE @ `stage`";
  tput sgr0;

  git stage "$0" ;
}

