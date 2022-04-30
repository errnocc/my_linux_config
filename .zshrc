# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="simple"

ZSH_THEME=maran
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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
		vi-mode
		z
		sudo
		zsh-autosuggestions
		zsh-syntax-highlighting
		extract
	)
source $ZSH/oh-my-zsh.sh
#source ~/.oh-my-zsh/custom/plugins/incr/incr-0.2.zsh

#java algs4
#export CLASSPATH=$CLASSPATH:/usr/local/lift/lib/algs4.jar:/usr/local/lift/lib/stdlib.jar:/usr/local/lift/lib/introcs.jar
#mysql
export MYSQL_HOME=/usr/local/mysql
export PATH=$PATH:$MYSQL_HOME/bin
#mycli
export PATH=$PATH:/home/lian/.local/bin
export PATH=$PATH:/usr/local/node/bin

#zsh-syntax-highlight
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'

#fzf
fzfp() {
fzf --preview '[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --style=numbers --color=always {} || rougify {}  || highlight -O ansi -l {} || coderay {} || cat {}) 2> /dev/null | head -500'
}

#colorful less
export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS='-R '
#man
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
#ibus
#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=ibus
#export QT_IM_MODULE=ibus
#
# Add TeX Live to the PATH, MANPATH, INFOPATH
#export PATH=/usr/local/texlive/2021/bin/x86_64-linux:$PATH
#export MANPATH=/usr/local/texlive/2021/texmf-dist/doc/man:$MANPATH
#export INFOPATH=/usr/local/texlive/2021/texmf-dist/doc/info:$INFOPATH
#export RANGER_LOAD_DEFULT_RC=FALSE
#export TERM_ITALICS=true

#gcc-11.1
#export PATH=/usr/local/gcc-11.1.0/bin:$PATH
#export LD_LIBRARY_PATH=/usr/local/gcc-11.1.0/lib64:$LD_LIBRARY_PATH

# To let CMake know
#export CC=/usr/local/gcc-11.1.0/bin/gcc-11.1
#export CXX=/usr/local/gcc-11.1.0/bin/g++-11.1
#export FC=/usr/local/gcc-11.1.0/bin/gfortran-11.1

# custom script
export PATH=/home/lian/code/script/:$PATH
#baidunetdisk
#export PATH=/opt/baidunetdisk:$PATH
#export DISPLAY=:0

#color-script
#colorscript random

#00default.sh

#export http_proxy="http://127.0.0.1:7890"
#export https_proxy="http://127.0.0.1:7890"
#screenfetch
 
bindkey '^ ' autosuggest-accept


#ranger
#keyword mapping
#xmodmap ~/.Xmodmap
#safe-rm
#alias rm='/usr/bin/safe-rm'
#rename vim to nvim
alias vim=nvim
#alias gcc=gcc-11.1
#alias g++=g++-11.1
#alias gdb='gdbtui -q'
# User configuration
alias exa='exa -l --icons'

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
# export ARCHFLAGS="-arch x86_64"
#
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export EDITOR=/usr/bin/nvim
#sudo systemctl restart clash@lian.service
#ranger 
#neovide
#multigrid
export NEOVIDE_MULTIGRID
#framelss
export NEOVIDE_FRAMELESS
