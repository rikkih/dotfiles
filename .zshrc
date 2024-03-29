# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.pyenv/bin/pyenv:$PATH
export PATH=$PATH:$HOME/.local/bin
export PYENV_ROOT="$HOME/.pyenv"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# GoLang bits
export PATH=$PATH:/usr/local/go/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Source any config files
source $HOME/.aliases

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="random"
ZSH_THEME_RANDOM_IGNORED=(
    "adben"
    "agnoster"
    "apple"
    "arrow"
    "avit"
    "awesomepanda"
    "bureau"
    "clean"
    "cloud"
    "cypher"
    "daveverwer"
    "dieter"
    "dogenpunk"
    "dstufft"
    "edvardm"
    "emotty"
    "evan"
    "example"
    "fishy"
    "fox"
    "frisk"
    "frontcube"
    "funky"
    "fwalch"
    "gallifrey"
    "gallois"
    "garyblessington"
    "geoffgarside"
    "gozilla"
    "humza"
    "imajes"
    "jbergantine"
    "jnrowe"
    "josh"
    "jreese"
    "jtriley"
    "junkfood"
    "kardan"
    "kennethreitz"
    "kolo"
    "kphoen"
    "lambda"
    "macovsky"
    "macovsky-ruby"
    "mgutz"
    "mikeh"
    "miloshadzic"
    "minimal"
    "mlh"
    "mortalscumbag"
    "nebirhos"
    "norm"
    "peepcode"
    "philips"
    "pmcgee"
    "refined"
    "risto"
    "rixius"
    "robbyrussell"
    "sammy"
    "simple"
    "Soliah"
    "sonicradish"
    "sorin"
    "sporty_256"
    "steeef"
    "strug"
    "sunaku"
    "sunrise"
    "superjarin"
    "takashiyoshida"
    "terminalparty"
    "theunraveler"
    "wedisagree"
    "wezm"
    "wezm+"
    "wuffers"
    "xiong-chiamiov"
    "zhann"
)

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    aws
    colored-man-pages
    docker
    dotenv
    git
    history
    kubectl
    poetry
    pyenv
    python
    terraform
    tmux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

ZSH_TMUX_AUTOSTART=true

# Keyboard mapping for the stupid fucking pgdn pgup keys
xmodmap -e "keycode 112 = Left"
xmodmap -e "keycode 117 = Right"

source $ZSH/oh-my-zsh.sh

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
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias treea="tree -a -I '.git|.mypy_cache'"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!{.git,node_modules,_pycache_}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="rg --sort-files --files --null 2> /dev/null $HOME/workspace/ | xargs -0 dirname | uniq"

# Bat for FZF (MAKE SURE BAT IS INSTALLED ON SYSTEM, otherwise this won't work)
export BAT_THEME=gruvbox-dark

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' aws

export PATH=$PATH:$HOME/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
