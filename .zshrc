export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="agnoster"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Alias
alias code-extensions="code --list-extensions > .config/VSCodium/User/extensions.txt"
alias restart-server='sudo systemctl restart httpd; sudo systemctl restart php-fpm; sudo systemctl restart nginx'
alias stop-server='sudo systemctl stop httpd; sudo systemctl stop php-fpm; sudo systemctl stop nginx'
alias start-server='sudo systemctl start httpd; sudo systemctl start php-fpm; sudo systemctl start nginx'
alias to-htdocs='cd /usr/share/nginx/html'
alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
if command -v lsd &> /dev/null; then
  alias ls='lsd --icon=always'
  alias ll='lsd -l --icon=always'
else
  alias ls='ls --color=auto'
  alias ll='ls -l --color=auto'
fi


# Bindkey
bindkey '^H' backward-kill-word
