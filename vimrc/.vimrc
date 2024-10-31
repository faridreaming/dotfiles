set relativenumber
syntax on
set tabstop=2
set shiftwidth=2
set expandtab

if &term == "xterm-kitty"
    let &t_SI = "\e[5 q"
    let &t_EI = "\e[1 q"
    let &t_SR = "\e[3 q"
endif

