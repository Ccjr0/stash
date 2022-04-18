# -----------------------------------------------
#                  --- ZSHRC ---                #
# -----------------------------------------------

## ---- Options section ----
setopt correct                                                  # Auto correct mistakes
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing
setopt rcexpandparam                                            # Array expension with parameters
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt nobeep                                                   # No beep
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt autocd                                                   # if only directory path is entered, cd there.
setopt inc_append_history                                       # save commands are added to the history immediately, otherwise only when shell exits.
setopt histignorespace                                          # Don't save commands that start with space

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                              # automatically find new executables in path
# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
# For enabling autocompletion of privileged environments in privileged commands (e.g. if you complete a command starting with sudo, completion scripts will also try to determine your completions with sudo), include:
zstyle ':completion::complete:*' gain-privileges 1

# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select
zmodload zsh/complist
setopt histignorealldups

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                              # automatically find new executables in path

# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
#export EDITOR=/usr/bin/nano
#export VISUAL=/usr/bin/nano
WORDCHARS=${WORDCHARS//\/[&.;]}                                 # Don't consider certain characters part of the word

## ---- Sources section ----
# Use powerline
#USE_POWERLINE="true"

# source ~/.config/broot/launcher/bash/br

## ---- Alias section ----
# 'sudo' alias fix
alias sudo='nocorrect sudo -E '

alias cp="cp -i"                                                # Confirm before overwriting something
alias df='df -h'                                                # Human-readable sizes
alias free='free -m'                                            # Show sizes in MB
alias ls='exa --icons --group-directories-first'
alias la='exa --icons -a --group-directories-first'
alias ll='exa --icons -alF --group-directories-first'
alias bat='bat --wrap=auto --style=numbers,changes'
alias ytmdl='ytmdl --skip-meta --ignore-chapters'
alias mkdir='mkdir -p'

# Convenience
alias xup='xrdb ~/.Xresources'
alias gitup='git add . && git commit && git push'

# Typo aliases 
alias claer='clear'
alias cealr='clear'
alias clare='clear'
alias clea='clear'
alias cler='clear'
alias celar='clear'
alias cela='clear'
alias clera='clear'
alias eixt='exit'
alias exti='exit'
alias usdo='sudo'
alias sduo='sudo'
alias sdou='sudo'
alias sduo='sudo'
alias pamcn='pacman'
alias pamcan='pacman'
alias pacmn='pacman'
alias pacma='pacman'
alias upt='sudo apt update'
alias zdup='sudo zypper dup'
alias rebot='reboot'
alias reboto='reboot'
alias vim='nvim'

# (Unused)
# alias ls='ls --color=auto --group-directories-first'
# alias la='ls -A --color=auto --group-directories-first'
# alias ll='ls -alF --color=auto --group-directories-first'
# alias grep='grep --color=auto'
# alias fgrep='fgrep --color=auto'
# alias egrep='egrep --color=auto'
# alias nnn='nnn -A -e'
# alias snnn='sudo nnn -A -e'


## ---- Theming section ----
PROMPT='%F{blue}%n%f@%F{white}%m%f %F{blue}%B%~%b%f '

## ---- Export section ----
export EDITOR="kate"
export READER="okular"
export VISUAL="nvim"
export TERMINAL="konsole"
export BROWSER="firefox"
export VIDEO="vlc"
export IMAGE="gwenview"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export PAGER="less"
export GTK_USE_PORTAL=1

# Color man pages
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
export LESS=-R

# NNN
export NNN_PLUG=
export NNN_SSHFS="sshfs -o follow_symlinks"        # make sshfs follow symlinks on the remote
export NNN_COLORS="2136"                           # use a different color for each context
export NNN_TRASH=1                                 # trash (needs trash-cli) instead of delete
export LC_COLLATE="C"                              # Sort hidden files first (NNN)
export NNN_ARCHIVE="\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)$" # bsdtar can extract, list and archivemount can mount ISO 9660 cdrom images (extn: iso).
export NNN_PLUG='f:finder;o:fzopen;p:mocplay;d:diffs;t:nmount;v:imgview'
set --export NNN_FIFO "/tmp/nnn.fifo"


## ---- Plugins section ----
# Enable fish style features
# Use syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Use history substring search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
# bind UP and DOWN arrow keys to history substring search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Rust
# . "$HOME/.cargo/env"
