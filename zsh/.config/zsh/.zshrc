# import relevant configurations from relevant files if they exist
for file in $ZDOTDIR/.{aliases,environment_vars}
do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done
unset file

######################################
# Syntax highlighting
######################################

# Enable syntax highlighting using zsh-syntax-highlighting extension

source "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# Setting colors
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[unknown-token]="fg=#777777,bold"
ZSH_HIGHLIGHT_STYLES[command]="fg=#e89d56,bold"
ZSH_HIGHLIGHT_STYLES[builtin]="fg=#54bf8f,bold"
ZSH_HIGHLIGHT_STYLES[alias]='fg=#74b8e8,bold'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]="fg=#60818f,bold"
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#60818f,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#ff392e,bold'

#####################################
# Tab completion
#####################################
#Set case insensitive completion

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

#####################################
# Autosuggestions
#####################################

# Show suggestions for commands you are typing based on history
source "/usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=241"

####################################
# Shell prompt
####################################

eval "$(starship init zsh)"
