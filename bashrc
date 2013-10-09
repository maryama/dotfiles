#################################
# git shortened commands
#################################
alias gil='git log --graph --abbrev-commit --stat -C --decorate --date=local'
alias gis='git status'
alias gic='git commit -a'
alias gica='git commit -a --amend'
alias pull='git safepull origin master'
alias fpush='git fpush origin master'
alias gc='git checkout'

#################################
#./fs
#################################
alias qc='./fs compile --read-from-artifact-cache'
alias sc='./fs sc'
alias qt='./fs test'

# compile luigi
alias ql='./pants --beta binary src/python/fsluigi:luigi-main'

# run python linter and put output in useful spot
alias plint='./scripts/luigi/run-pylint.sh; cp .pants.d/luigi/pylint.html ~/www/'

#################################
# short cut for all the web flags
#################################
#this one is for testing local server changes
alias web='./fs web --www=cached --api=cached --drag=cached --rec=pants --prod --me -j -D -l'
#this one is for testing admin page changes
alias aweb='./fs web --www=pants --api=staging --drag=cached --me'

export EDITOR=vim
