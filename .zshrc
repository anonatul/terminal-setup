# Powerlevel10k Instant Prompt
# Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Update PATH
export PATH="$HOME/.gem/ruby/3.1.0/bin:$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

# Theme Configuration
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Powerlevel10k Configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Custom Aliases
alias ls='colorls --group-directories-first'
alias lc='colorls -lA --group-directories-first'
alias ll='colorls -l --group-directories-first'
alias lt='colorls --tree'
alias l='colorls -A --sd'

# Colorls Tab Completion
source $(dirname $(gem which colorls))/tab_complete.sh

# Uncomment and configure as needed
# export LANG=en_US.UTF-8
# export EDITOR='nvim'
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder
# zstyle ':omz:update' mode auto
# zstyle ':omz:update' frequency 13
