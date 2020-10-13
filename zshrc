# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

# ===
# === Zinit
# ===

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

# 如果你也是 OMZ 的用户，建议同样加载这些库，能保证体验一致
zinit snippet OMZ::lib/clipboard.zsh
zinit snippet OMZ::lib/completion.zsh
zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::lib/key-bindings.zsh
zinit snippet OMZ::lib/git.zsh
zinit snippet OMZ::lib/theme-and-appearance.zsh
### End of Zinit's installer chunk
# Two regular plugins loaded without investigating.
# zinit light zsh-users/zsh-autosuggestions
# zinit light zsh-users/zsh-syntax-highlighting
zinit light zdharma/fast-syntax-highlighting


# Plugin history-search-multi-word loaded with investigating.
zinit load zdharma/history-search-multi-word
zinit load zsh-users/zsh-autosuggestions

zinit ice depth=1
zinit light romkatv/powerlevel10k

# A glance at the new for-syntax – load all of the above
# plugins with a single command. For more information see:
# https://zdharma.org/zinit/wiki/For-Syntax/
zinit for \
	light-mode  zdharma/fast-syntax-highlighting \
	light-mode  zsh-users/zsh-autosuggestions \
	light-mode  zdharma/history-search-multi-word \

	# light-mode  zsh-users/zsh-syntax-highlighting \
# Binary release in archive, from GitHub-releases page.
# After automatic unpacking it provides program "fzf".
zinit ice from"gh-r" as"program"
zinit load junegunn/fzf-bin

# One other binary release, it needs renaming from `docker-compose-Linux-x86_64`.
# This is done by ice-mod `mv'{from} -> {to}'. There are multiple packages per
# single version, for OS X, Linux and Windows – so ice-mod `bpick' is used to
# select Linux package – in this case this is actually not needed, Zinit will
# grep operating system name and architecture automatically when there's no `bpick'.
zinit ice from"gh-r" as"program" mv"docker* -> docker-compose" bpick"*linux*"
zinit load docker/compose

# Vim repository on GitHub – a typical source code that needs compilation – Zinit
# can manage it for you if you like, run `./configure` and other `make`, etc. stuff.
# Ice-mod `pick` selects a binary program to add to $PATH. You could also install the
# package under the path $ZPFX, see: http://zdharma.org/zinit/wiki/Compiling-programs
zinit ice as"program" atclone"rm -f src/auto/config.cache; ./configure" \
    atpull"%atclone" make pick"src/vim"
zinit light vim/vim

# Scripts that are built at install (there's single default make target, "install",
# and it constructs scripts by `cat'ing a few files). The make'' ice could also be:
# `make"install PREFIX=$ZPFX"`, if "install" wouldn't be the only, default target.
zinit ice as"program" pick"$ZPFX/bin/git-*" make"PREFIX=$ZPFX"
zinit light tj/git-extras

# Handle completions without loading any plugin, see "clist" command.
# This one is to be ran just once, in interactive session.
# zinit creinstall %HOME/my_completions

# ===
# === Powerlevel10k
# ===

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


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
# === 
# === ros
# === 
source /opt/ros/noetic/setup.zsh


# === 
# === autojump
# === 
. /usr/share/autojump/autojump.sh

