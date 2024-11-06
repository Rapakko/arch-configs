if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting
    pfetch
end

alias rmf='rm -rf'
alias ls='exa'
alias lsa='exa -lah'
alias btop='bashtop'
alias cosmere='ssh -p 200 frans@192.168.1.253'
alias hypexit='hyprctl dispatch exit'
alias byebye='shutdown now'
alias goodbye='shutdown now'

# Created by `pipx` on 2024-06-23 21:14:38
set PATH $PATH /home/freija/.local/bin
