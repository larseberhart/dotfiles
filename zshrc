# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to the oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Oh-my-zsh plugins
plugins=(macos brew git git-extras sublime zsh-syntax-highlighting zsh-autosuggestions)

# Configure history file and size
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000

# set TERM environment
export TERM="xterm-256color"

# Set theme to PowerLevel9k 
ZSH_THEME="powerlevel10k/powerlevel10k" # set by `omz`

# PowerLevel9k configuration
# Powerline font requiered. Installed: SourceCodePro+Powerline+Awesome+Regular
# POWERLEVEL9K_MODE="awesome-patched"
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs dir_writable)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs)
# POWERLEVEL9K_HOST_LOCAL_FOREGROUND="green"
# POWERLEVEL9K_IP_FOREGROUND="black"
# POWERLEVEL9K_IP_BACKGROUND="green"
# POWERLEVEL9K_DIR_HOME_BACKGROUND='green'
# POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='green'
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
# POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='yellow'
# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

source $ZSH/oh-my-zsh.sh
ZSH_HIGHLIGHT_STYLES[globbing]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[path]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=red,bold'

# command auto-correction.
ENABLE_CORRECTION="true"

# display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# User configuration
export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/MacGPG2/bin:/usr/texbin:/Library/Frameworks/GDAL.framework/Versions/2.2/Programs/:/Applications/Postgres.app/Contents/Versions/latest/bin:/Users/larseberhart/Library/Python/3.9/bin"
export LANG=de_DE.UTF-8
export PATH=/Library/TeX/texbin:$PATH
export PATH=/Users/larseberhart/development/flutter/bin:$PATH

# Added by cpan installer
PATH="/Users/larseberhart/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/larseberhart/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/larseberhart/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/larseberhart/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/larseberhart/perl5"; export PERL_MM_OPT;

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias ls='lsd'

source /Users/larseberhart/.config/broot/launcher/bash/br
export PATH=/opt/homebrew/bin:/opt/anaconda3/bin:/Users/larseberhart/perl5/bin:/Users/larseberhart/development/flutter/bin:/Library/TeX/texbin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/MacGPG2/bin:/usr/texbin:/Library/Frameworks/GDAL.framework/Versions/2.2/Programs/:/Applications/Postgres.app/Contents/Versions/latest/bin:/Users/larseberhart/Library/Python/3.9/bin

eval $(thefuck --alias)

# Completion for HomeBrews
eval "$(brew shellenv)"
autoload -Uz compinit
compinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/larseberhart/.cache/lm-studio/bin"
