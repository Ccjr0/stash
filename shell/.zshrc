# -----------------------------------------------
#                   --- ZSHRC ---               |
# -----------------------------------------------
PROMPT='%F{blue}%n%f@%F{white}%m%f %F{blue}%B%~%b%f '

# The following lines were added by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/ccjr/.zshrc'
bindkey -v
autoload -Uz compinit
compinit
# End of lines added by compinstall


# Common ----------------------------------------
# For enabling autocompletion of privileged environments in privileged commands (e.g. if you complete a command starting with sudo, completion scripts will also try to determine your completions with sudo), include: 
zstyle ':completion::complete:*' gain-privileges 1

# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

#source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /home/ccjr/.config/broot/launcher/bash/br

# Search repos for programs that can't be found
#source /usr/share/doc/pkgfile/command-not-found.zsh 2>/dev/null

setopt nocaseglob
setopt rcexpandparam
setopt nocheckjobs
setopt numericglobsort
setopt histignorealldups


# Vi mode --------------------------------------- 
export KEYTIMEOUT=1

# Edit line in vim buffer ctrl-v
autoload edit-command-line; zle -N edit-command-line
bindkey '^v' edit-command-line

# Enter vim buffer from normal mode
autoload -U edit-command-line && zle -N edit-command-line && bindkey -M vicmd "^v" edit-command-line

# Fix backspace bug when switching modes
bindkey "^?" backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[2 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[6 q'
  fi
}
zle -N zle-keymap-select

# ci", ci', ci`, di", etc
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
  for c in {a,i}{\',\",\`}; do
    bindkey -M $m $c select-quoted
  done
done

# ci{, ci(, ci<, di{, etc
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M $m $c select-bracketed
  done
done
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[6 q"
}
zle -N zle-line-init
echo -ne '\e[6 q' # Use beam shape cursor on startup.
precmd() { echo -ne '\e[6 q' ;} # Use beam shape cursor for each new prompt.


# Aliases ---------------------------------------
# Unused
#alias ls='ls --color=auto --group-directories-first'
#alias la='ls -A --color=auto --group-directories-first'
#alias ll='ls -alF --color=auto --group-directories-first'
#alias grep='grep --color=auto'
#alias fgrep='fgrep --color=auto'
#alias egrep='egrep --color=auto'
#alias DOTS='cd ~/github/dots && lazygit'
#alias GDEV='cd ~/github/gdev && lazygit'
#alias SNIPER='cd ~/github/SniperGame && lazygit'

alias cp="cp -i"
alias ls='exa --icons --group-directories-first'
alias la='exa --icons -a --group-directories-first'
alias ll='exa --icons -alF --group-directories-first'
alias bat='bat --wrap=auto'
alias n='nnn -A -e'
alias sn='sudo nnn -A -e'
alias vim='nvim'
alias ytmdl='ytmdl --skip-meta'
alias mkdir='mkdir -p'

# Convenience
alias xup='xrdb ~/.Xresources'
alias gitup='git add . && git commit && git push'

# 'sudo' alias fix
alias sudo='nocorrect sudo -E '         

# Typo aliases 
alias claer='clear'
alias cealr='clear'
alias clare='clear'
alias clea='clear'
alias cler='clear'
alias celar='clear'
alias cela='clear'
alias eixt='exit'
alias exti='exit'
alias pamcan='pacman'
alias pacmn='pacman'
alias rebot='reboot'
alias reboto='reboot'


# Export ----------------------------------------
export VISUAL='nvim'
export VIDEO='vlc'
export AUDIO='vlc'
export EDITOR='nvim'
export PAGER='less'
export VIEWER='okular'


# NNN -------------------------------------------
#export NNN_PLUG=
#export NNN_SSHFS="sshfs -o follow_symlinks"        # make sshfs follow symlinks on the remote
#export NNN_COLORS="2136"                           # use a different color for each context
#export NNN_TRASH=1                                 # trash (needs trash-cli) instead of delete
#export LC_COLLATE="C" # Sort hidden files first (NNN)
#export NNN_ARCHIVE="\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)$" # bsdtar can extract, list and archivemount can mount ISO 9660 cdrom images (extn: iso).
#export NNN_PLUG='f:finder;o:fzopen;p:mocplay;d:diffs;t:nmount;v:imgview'
#set --export NNN_FIFO "/tmp/nnn.fifo"


# RUST ------------------------------------------
#. "$HOME/.cargo/env"



