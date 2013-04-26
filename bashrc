# git shortened commands
alias gil='git log --graph --abbrev-commit --stat -C --decorate --date=local'
alias gis='git status'
alias gic='git commit -a'
alias gica='git commit -a --amend'
alias pull='git safepull origin master'
alias fpush='git fpush origin master'
alias gc='git checkout'

#./fs
alias qc='./fs compile --read-from-artifact-cache'
alias qt='./fs test'

# run python linter and put output in useful spot
alias plint='./scripts/luigi/run-pylint.sh; cp .pants.d/luigi/pylint.html ~/www/'

# short cut for all the web flags
alias web='./fs web --me --prod --no-jscompile --no-lesscss --no-deploy-resources --snappy --prodlogdebug'

export EDITOR=vim
