txtcyn=$'\e[0;36m'  # Cyan
txtrst=$'\e[0m'     # Text Reset
function parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="⚡️  \W\[$txtcyn\]\$(parse_git_branch) \[$txtrst\]\$ "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias ns="npm start"
alias gs="git status"
alias gcm="git checkout master"
alias ..="cd .."
alias ga="git add -A"
alias mets="meteor --settings settings.json"
alias met="meteor"

alias bp="source ~/.bash_profile"


function hero() {
    git add -A
    git commit -m "$1"
    git push
    git push heroku master
}
function ll() {
    git commit -a -m "$1"
    git push
}
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
