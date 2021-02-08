export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
#export DISPLAY=localhost:0.0
test -r ~/.bashrc && . ~/.bashrc
export GOPATH=~/go
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock
[[ -z $DISPLAY && XDG_VTNR -eq 1 ]] && exec startx
