# .bash_aliases

alias ls='ls --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ll='ls -lF'
alias la='ls -A'
alias l='ls -CF'

if which hub >/dev/null 2>&1; then alias git="hub"; fi
alias g="git"
alias vi="vim"

function irb { if which pry >/dev/null 2>&1; then pry $*; else `which irb` $*; fi; }
function be { if bundle check >/dev/null 2>&1; then bundle exec $*; else $*; fi; }

for cmd in rails rake rspec
do
  alias $cmd="be ${cmd}"
done

alias r="rails"
alias ra="rake"

alias up="cd .. && pwd"
alias up1="cd .. && pwd"
alias up2="cd ../.. && pwd"
alias up3="cd ../../.. && pwd"
alias up4="cd ../../../.. && pwd"
alias up5="cd ../../../../.. && pwd"

alias t="tmux"
alias web="ruby -rwebrick -e 'WEBrick::HTTPServer.new(DocumentRoot: '\''./'\'', Port: 8000).start'"
alias u="uim-fep"

