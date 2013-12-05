#vim:foldmethod=marker foldmarker="<<<,>>>e

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/sbin/clamd:$PATH"
eval "$(rbenv init -)"
export PATH="./bin:$PATH"
export PATH="/usr/textbin:$PATH"

# Aliases

# Set tab title <<<
set_tab_title() {
	echo -ne "\e]1;$@\a"	
}
alias set_title=set_tab_title
alias tt=set_tab_title
# Set tab title >>>

alias co='git checkout'
alias gp='git pull'
alias gs='git status'
alias gd='git diff --color'

alias bi='bundle install'
alias be='bundle exec'
alias fb='bundle exec fudge build'
alias fbx='SETUP=false fb'

alias md5sum='md5'

alias updatedb='sudo /usr/libexec/locate.updatedb'

alias aponline='cd /Development/sageone_accounts_production/accounts_production; tt ap'
alias ap_start='cd /Development/sageone_accounts_production/host_app; tt host; be rails s -p3034'
alias ms1='cd /Development/mysageone_uk; tt MS1'
alias ms1_start='cd /Development/mysageone_uk/host_app; tt MS1; be rails s'

export EDITOR=vim
