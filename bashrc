export PATH=/Users/maryam/bin:$PATH

# oozie things
export OOZIE_URL=http://localhost:11000/oozie
export OOZIE_HOME="/Users/maryam/tools/oozie-2.3.2-cdh3u3"
export PATH="$PATH:$OOZIE_HOME/bin"
nameNode=hdfs://localhost:8020
jobTracker=localhost:8021

# hadoop things
export HADOOP_HOME="$HOME/tools/hadoop-0.20.2-cdh3u3"
PATH="$PATH:$HADOOP_HOME/bin"

PS1='\n\w$ '

alias ls='ls -G'
alias gr='grep -riI'
alias mt="dependencies/mongodb/bin/mongod --dbpath=mongo-testdb/"
alias c="clear"
alias killjava="ps -ef | grep java | grep -v grep | awk '{print \$2}' | xargs kill -9"

# git shortened commands
alias gil='git log --graph --abbrev-commit --stat -C --decorate --date=local'
alias gis='git status'
alias gic='git commit -a'
alias gica='git commit -a --amend'
alias gips='git push --force staging `git branch | grep "*" | sed "s/* //"`'
alias pull='git safepull origin master'
alias fpush='git fpush origin master'
alias fs='find . | grep -i $1 | grep scala | grep -v target | grep -v swp | grep -v class'
alias gc='git checkout'

# drag
alias drag='./fs drag --api-server=localhost:12345 --lift-server=localhost:12345 --api-host=localhost:12345'

#./pq
alias qc='./fs compile'
alias qt='./fs test'

export EDITOR=vim
