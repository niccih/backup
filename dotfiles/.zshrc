source ~/.bash_profile
# Set up zsh prompt display
setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats \
	      '%F{5}[%F{2}branch: %b%F{5}] %F{2}%c%F{3}%u%f'
zstyle ':vcs_info:*' enable git
precmd () { vcs_info }
PROMPT='%F{5}[%F{2}%n@%m%F{5}] %F{3}%3~ ${vcs_info_msg_0_} %f%# '

# Fix binding for delete key
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char

# Set up bindings as I expect them
bindkey "[H" beginning-of-line
bindkey "[F" end-of-line


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
