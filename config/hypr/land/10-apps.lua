-----------------
-- MY PROGRAMS --
-----------------

-- See https://wiki.hypr.land/Configuring/Keywords/

local terminal = "alacritty"
local fileManager = "thunar"
local menu = "rofi -show drun || pkill rofi"
local editor = "vscodium"
local voiceChat = "vesktop"
local webbrowser = "firefox"
local emoji = "rofimoji -s light"
local settings = editor .. " ~/.dotfiles"

local screenshot = "slurp -d | grim -g - - | wl-copy"
local screenshotWindow = "hyprctl -j activewindow | jq -r '\"\\(.at[0]),\\(.at[1]) \\(.size[0])x\\(.size[1])\"' | grim -g - - | wl-copy"
local screenshotFull = "grim - | wl-copy"

---------------
-- Autostart --
---------------

hl.on("hyprland.start", function()
    hl.exec_cmd("nm-applet &")
    hl.exec_cmd("waybar -c ~/.config/waybar/config.jsonc -s ~/.config/waybar/style.css")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("nextcloud")
end)

