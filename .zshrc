# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="comfyline"
prompt_context(){
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER@%m"
  fi
}

COMFYLINE_NO_START=1      # variable to have no segment seperator at the start and end of the powerline from the edge of terminal
COMFYLINE_RETVAL_NUMBER=2
COMFYLINE_START_NEXT_LINE=1
COMFYLINE_NEXT_LINE_CHAR='\u000A\ue0b0'
COMFYLINE_NO_GAP_LINE=1
COMFYLINE_NEXT_LINE_CHAR_COLOR="#6c7086" # Overlay 0
COMFYLINE_TIME_FORMAT="%H:%M"


HOST_RANK=1    # hostname
USER_RANK=2
DIR_RANK=3
GIT_RANK=4
VENV_RANK=5
RETVAL_RANK=-1  # return value of previous command if error then displays it in red
#BAT_RANK=-1
DATE_RANK=-2
TIME_RANK=-3

RETVAL_b="#fab387" # Peach  # background

HOST_b="#85c1dc" # Sapphire
USER_b="#8caaee" # Blue
GIT_b="#ea999c" # maroon
GIT_CLEAN_b="#a6e3a1" # Green
DIR_b="#b4befe" # Lavender
VENV_b="#b4befe" # Lavender
BAT_b="#74c7ec" #Sapphire
DATE_b="#89dceb:" #Sky
TIME_b="#8caaee" # Blue 

RETVAL_f="#303446"    # foreground
HOST_f="#303446" 
USER_f="#303446"
GIT_f="#303446"
GIT_CLEAN_f="#303446"
DIR_f="#303446"
VENV_f="#303446"
BAT_f="#303446"
DATE_f="#303446"
TIME_f="#303446"

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
 zstyle ':omz:update' mode auto      # update automatically without asking
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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

#POWERLINE CONFIG
#powerline-daemon -q
#. /usr/share/powerline/bindings/zsh/powerline.zsh

alias rm="rm -I"

# Syntax Highlight
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# kitty ssh fix
alias ssh="kitten ssh"
export ZLE_RPROMPT_INDENT=0

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

clear
fastfetch
