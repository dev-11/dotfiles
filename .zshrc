# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/otto/.oh-my-zsh"
PATH=$PATH:~/Library/Python/3.7/bin
PATH=$PATH:$PYENV_ROOT/shims

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
#plugins=(zsh-autosuggestions)

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# to use pyenv
eval "$(pyenv init -)"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

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
alias ww='curl -4 http://wttr.in/London'
alias moon='curl -4 http://wttr.in/Moon'
alias mm='curl -4 http://wttr.in/Moon'
alias sj='bundle exec jekyll serve'
alias gd='cdiff -s -w 0'
alias cdp='~/Source/prezola/prezola/'
alias p='python'
alias ds='~/Source/prezola/prezola/deploy.py --env staging-4 --auto'


function gmd(){
  echo "`tput setaf 1`MERGING `tput sgr0`@ `date`";
  echo "From `tput setaf 2`origin/develop
`tput sgr0 `to `tput setaf 3``git branch --show-current`";
  tput sgr0;

  git merge origin/develop
}

function ch(){
    cat ~/.zsh_history | grep $1;
}

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

# added by travis gem
[ ! -s /Users/otto/.travis/travis.sh ] || source /Users/otto/.travis/travis.sh

eval $(thefuck --alias)
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
