# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# rmにいちいち確認をさせる
alias rm='rm -i'

#set -x PATH $HOME/.rbenv/bin $PATH
#eval (rbenv init -)
set --universal fish_user_paths $fish_user_paths ~/.rbenv/shims

# If not running interactively, do not do anything
#[[ $- != *i*  ]] && return
#[[ -z "$TMUX"  ]] && exec tmux

# TMUX
if test -z $TMUX
  tmux new-session
end

# jupyter notebook
#alias scipy-notebook='sudo docker run -p 8888:8888 -v (pwd):/home/jovyan/work jupyter/scipy-notebook jupyter-notebook'
alias scipy-notebook='sudo docker run -p 8888:8888 -v (pwd):/home/jovyan/work jupyter/scipy-notebook'

alias whois-jpnic='whois -h whois.nic.ad.jp'
