source $HOME/.dotfiles-priv/zsh/func-priv.sh
stty -ixon 
# If you come from bash you might have to change your $PATH.
  export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
#CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
#DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fasd extract web-search zsh-syntax-highlighting zsh-autosuggestions copybuffer)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH" 

# You may need to manually set your language environment
# export LANG=en_US.UTF-8


export EDITOR='vim'
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#    export EDITOR='vim'
# else
#    export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



############### MY CUSTOM SETTINGS ###################

#########           ZSH    ONLY            ###########

# export TERM="screen-256color" 
export DEFAULT_USER=firmart

# Completion
zstyle ':completion:*' list-prompt   ''
zstyle ':completion:*' select-prompt ''

autoload -U compinit
compinit
zmodload -i zsh/complist        
setopt hash_list_all            # hash everything before completion
setopt completealiases          # complete alisases
setopt always_to_end            # when completing from the middle of a word, move the cursor to the end of the word    
setopt complete_in_word         # allow completion from within a word/phrase
setopt correct                  # spelling correction for commands
setopt list_ambiguous           # complete as much of a completion until it gets ambiguous.

zstyle ':completion::complete:*' use-cache on               # completion caching, use rehash to clear
zstyle ':completion:*' cache-path ~/.zsh/cache              # cache path
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'   # ignore case
zstyle ':completion:*' menu select=2                        # menu if nb items > 2
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}       # colorz !
zstyle ':completion:*::::' completer _expand _complete _ignored _approximate # list of completers to use

# sections completion !
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format $'\e[00;34m%d'
zstyle ':completion:*:messages' format $'\e[00;31m%d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:manuals' separate-sections true

zstyle ':completion:*:processes' command 'ps -au$USER'
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=29=34"
zstyle ':completion:*:*:killall:*' menu yes select
zstyle ':completion:*:killall:*' force-list always
zstyle ':completion:*' users $users

#generic completion with --help
compdef _gnu_generic gcc
compdef _gnu_generic gdb

# Automatically escape special characters in URL 
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

# Path

export PATH=$PATH:$HOME/.my-script/

export MANPATH=/usr/local/texlive/texmf-dist/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/texmf-dist/doc/info:$INFOPATH
export PATH=/usr/local/texlive/bin/x86_64-linux:$PATH

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# To alias sudo command
alias sudo='sudo '
# Let mv verbose
alias mv='mv -v '
alias rm='rm -v '
# mv files to Trash instead of rm them, it is compatible with the native eleOS FM.

rmtrash(){
	for file in "$@"
	do
		mv $file ~/.local/share/Trash/files/
		echo -e "[Trash Info]\nPath=$(pwd)/$(basename $file)\nDeletionDate=$(date +"%Y-%m-%dT%H:%M:%S")" > ~/.local/share/Trash/info/$(basename $file).trashinfo
	done
}

#alias rm="rmtrash"

#######                Dict                    #######

dictl(){
	dict $@ | less;
}

#####                 TeXLive manager         #######

alias stlmgr='sudo /usr/local/texlive/2017/bin/x86_64-linux/tlmgr'

#####                  Youtube-dl             #######

you-play(){
    youtube-dl -q -o- $1 | mplayer -cache 8192  -
}
#####                  vimwiki               #######

alias vw='vim -c VimwikiIndex'

# Search line which match pattern and doesn't contain URL
vws(){
    vim -c VimwikiIndex -c "VWS '\(http.*\)\@<!$1\(.*http\)\@!\c'" -c lopen;
}

vwg(){
    vim -c VimwikiIndex -c "VimwikiGoto $1"
}

# Search line which match pattern following URL
vwl(){
    vim -c VimwikiIndex -c "VWS $1.*http.*\c" -c lopen;
}
