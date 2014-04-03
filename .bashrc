# System-wide .bashrc file for interactive bash(1) shells.
if [ -z "$PS1" ]; then
   return
fi

# Make bash check its window size after a process completes
shopt -s checkwinsize

export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
export GIT_EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
export LSCOLORS=Cxgxcxdxbxegedabagacah
export GREP_COLOR="1;32"
export PS1="\\w\e[\[0;32m:\]\[\e[0;37m \]"
export CATALINA_OPTS=-XX:MaxPermSize=512m

alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias ls="ls -G"
alias ll="ls -laG"
alias grep="grep --color=auto"
alias :q="exit"
alias updatedb="sudo /usr/libexec/locate.updatedb &"
alias beep="afplay /System/Library/Sounds/Funk.aiff"

# Oracle stuff
export ORACLE_HOME=/Users/hertje3/app/oracle/instantclient_10_2
export DYLD_LIBRARY_PATH=$ORACLE_HOME:/opt/local/lib:/usr/lib
export LD_LIBRARY_PATH=$ORACLE_HOME
export TNS_ADMIN=$ORACLE_HOME
export VERSIONER_PYTHON_PREFER_32_BIT=Yes

