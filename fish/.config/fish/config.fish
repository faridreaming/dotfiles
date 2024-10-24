if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Theme
set -g theme_title_use_abbreviated_path no
set -g theme_color_scheme catppuccin-mocha
set -g theme_date_format "+%d/%m/%y %H:%M:%S"

# Greeting
function fish_greeting
    fastfetch
end
