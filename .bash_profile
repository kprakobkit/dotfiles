export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
export PATH=$PATH:~/bin/
export JAVA_HOME=$(/usr/libexec/java_home)

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Path to the bash it configuration
export BASH_IT="/Users/kprakobk/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='Minimal'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
source $BASH_IT/bash_it.sh

SHELL=/bin/bash; export SHELL

NPM_PACKAGES="${HOME}/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"

PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`  command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

alias pos="cd ~/Code/pos"
alias trip="cd ~/Code/trip"
alias serve-python="python -m SimpleHTTPServer"
alias code="cd ~/Code"
alias vim="mvim -v"
alias v="vim ."
alias c="clear"
alias l="ls -la"
alias ta="tmux attach -t"
alias tn="tmux new -s"
alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d\  -f2"
alias sub="open . -a 'Sublime Text 2'"
alias prstash="!f() { git fetch $1 refs/pull-requests/$2/from:$3; } ;"
alias glog="git log --oneline --decorate --color --graph"
alias glol="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glola="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
alias go="./go"
alias gup="git pull --rebase"
alias gst="git status"
alias gco="git checkout"
alias gd="git diff"
alias gdca="git diff --cached"
alias gc="git commit"
alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport"
alias connect-wifi="networksetup -setairportnetwork en0 $1 $2"
alias pdate='date +"%Y-%m-%d.%H.%m.%S"'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export NVM_DIR="/Users/kprakobk/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
