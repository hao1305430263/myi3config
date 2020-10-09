# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/haouanbo/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
	git
	autojump	
)

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
alias s="neofetch"
alias c="clear"
alias ra="ranger"
alias steam="steam --proxy-server="socks5://127.0.0.1:1089""
alias l="exa -lhHm --git"
alias la="exa -lahHm --git"


export http_proxy="http://127.0.0.1:8889"
export https_proxy="http://127.0.0.1:8889"


# export http_proxy="http://192.168.31.73:7890"
# export https_proxy="http://192.168.31.73:7890"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/haouanbo/.miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/haouanbo/.miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/haouanbo/.miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/haouanbo/.miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# >>> lazygit >>>
lg()
{
    export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir

    lazygit "$@"

    if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
            cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
            rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
    fi
}
# <<< lazygit <<<


# export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}
#
# export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
#
# export CUDA_HOME=/usr/local/cuda
# 
export CUDA_HOME=/usr/local/cuda
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:"$LD_LIBRARY_PATH:/usr/loacl/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64"
export PATH=/usr/local/cuda/bin:$PATH


# >>> safe-rm >>>
alias myrm='trash'  
alias rl='trashlist'  
alias ur='undelfile'   
# 替换rm指令移动文件到~/.trash/中   
trash()  
{  
   mv $@  ~/.trash/  
}  
# 显示回收站中垃圾清单  
trashlist()  
{  
   echo -e "\033[32m==== Garbage Lists in ~/.trash/ ====\033[0m"  
   echo -e "\033[33m----Usage------\033[0m"  
   echo -e "\033[33m-1- Use 'cleartrash' to clear all garbages in ~/.trash!!!\033[0m"  
   echo -e "\033[33m-2- Use 'ur' to mv the file in garbages to current dir!!!\033[0m"  
   ls -al  ~/.trash  
}  
# 找回回收站相应文件   
undelfile()  
{  
   mv -i ~/.trash/$@ ./  
}  
#清空回收站   
cleartrash()  
{  
   echo -ne "\033[33m!!!Clear all garbages in ~/.trash, Sure?[y/n]\033[0m"  
   read confirm  
   if [ $confirm == 'y' -o $confirm == 'Y' ] ;then  
      /bin/rm -rf ~/.trash/*  
      /bin/rm -rf ~/.trash/.* 2>/dev/null  
   fi    
}
# <<< safe-rm <<<
source /opt/ros/noetic/setup.zsh
