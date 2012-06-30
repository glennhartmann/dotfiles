# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' ignore-parents parent pwd .. directory
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*' '+'
zstyle ':completion:*' menu select=0
zstyle ':completion:*' original true
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl true
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/hartmanng/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory autocd beep extendedglob notify
unsetopt nomatch
bindkey -e
# End of lines configured by zsh-newuser-install

# home/end keys
bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line

# mac option/shift left/right
bindkey '\e[5D' beginning-of-line
bindkey '\e[5C' end-of-line
bindkey '\e[5E' forward-word
bindkey '\e[5F' backward-word

autoload -U colors && colors

# prompt
# export PROMPT=[%n@%m:%C]%#\ 
# PROMPT=$'%(!.%F{red}☠%F{default}.%F{green}❤%F{default}) [%(2L.+.)%n%F{red}@%F{default}%m] [%F{cyan}%~%F{default}] [%F{red}%T %w%F{default}] [%F{yellow}%!%F{default}] [%(?.-.%F{cyan}%?%F{default})] '
# # export PROMPT=$'[%(2L.+.)%n%F{red}@%F{default}%m] [%F{cyan}%~%F{default}] [%F{red}%T %w%F{default}] [%F{yellow}%!%F{default}] [%(?.-.%F{cyan}%?%F{default})] '
# export PROMPT=$'[%(2L.+.)%n%F{red}@%F{default}%m] [%F{cyan}%(3~;%-2~/.../%1~;%~)%F{default}] [%F{red}%T %w%F{default}] [%F{yellow}%!%F{default}] [%(?.-.%F{cyan}%?%F{default})] %# '
# export PROMPT=$'[%(2L.+.)%n%F{red}@%F{default}%m] [%F{cyan}%(3~;%-2~/.../%1~;%~)%F{default}] [%F{red}%T %w%F{default}] [%F{yellow}%!%F{default}] [%(?.-.%F{cyan}%?%F{default})]  
# %(!.#.$) '
# export PROMPT=$'[%(2L.+.)%n%F{red}@%F{default}%m] [%F{cyan}%(3~;%-2~/.../%1~;%~)%F{default}] [%F{red}%T %w%F{default}] [%F{yellow}%!%F{default}] [%(?.-.%F{cyan}%?%F{default})]  
# %F{red}!%F{default}%(!.#.$) '
export PROMPT=$'[%n%F{red}@%F{default}%m] [%F{cyan}%~%F{default}] [%F{red}%T %w%F{default}] [%F{yellow}%!%F{default}] [%(?.-.%F{cyan}%?%F{default})]  
%F{red}!%F{default}%(!.#.$) '

# multi-instance shared history
setopt share_history

# bz2
bz2c() { tar cv $1 | bzip2 > $2; };
bz2x() { bzip2 -c -d $1 | tar xv; };

# gz
gzc() { tar cv $1 | gzip > $2; };
gzx() { gzip -c -d $1 | tar xv; };

# reconf
alias reconf="source ~/.zshrc"

# path from bash
export PATH="/usr/local/bin:/usr/texbin:/usr/local/i386-mingw32-4.3.0/bin:/Users/glenn/Library/Scripts/Shell Scripts:/Library/Scripts/Shell Scripts:/sw/bin:/sw/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/local/MacGPG2/bin:/usr/texbin:/usr/X11/bin:/opt/local/bin:/usr/X11R6/bin:/opt/local/bin:/opt/local/sbin:/Users/glenn/go/bin:$PATH"

# less syntax highlighting. Requires http://www.gnu.org/software/src-highlite/
export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=' -R '
