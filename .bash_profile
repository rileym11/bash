txtcyn=$'\e[0;36m'  # Cyan
txtrst=$'\e[0m'     # Text Reset
function parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="⚡️  \W\[$txtcyn\]\$(parse_git_branch) \[$txtrst\]\$ "

alias gs="git status"
alias ..="cd .."
alias met="meteor --settings settings.json"
alias resetgit="source ~/.bash_profile"


function hero() {
    git add .
    git commit -a -m "$1"
    git push
    git push heroku master
}
function ll() {
    git add .    
    git commit -a -m "$1"
    git push
}