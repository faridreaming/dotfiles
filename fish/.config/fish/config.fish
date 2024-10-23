if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Theme
set -g theme_title_use_abbreviated_path no
set -g theme_color_scheme catppuccin-mocha

# Greeting
function fish_greeting
    echo Assalamu\'alaikum, (whoami)!
    echo The time is (set_color yellow; date "+%A, %B %d, %Y"; set_color normal)
    echo This system is called $hostname
end
