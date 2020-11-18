export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
#export DISPLAY=localhost:0.0
test -r ~/.bashrc && . ~/.bashrc
export GOPATH=~/go
[[ -z $DISPLAY && XDG_VTNR -eq 1 ]] && exec startx
