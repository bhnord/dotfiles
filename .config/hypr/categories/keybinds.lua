---@module 'hl'

-- Keybinds

local terminal = "kitty"

local fileManager = "nautilus"

local menu = "rofi -show drun"

local pmenu = "rofi -show run"

local menucalc = "rofi -show calc"

local menuemoji = "rofi -show emoji"

local mainMod = "SUPER"

-- System
local function bind(key, action, options)
	hl.bind(mainMod .. " + " .. key, action, options)
end

bind("C", hl.dsp.window.close())
bind("M", hl.dsp.exit())
bind("E", hl.dsp.exec_cmd("nautilus"))
bind("V", hl.dsp.window.float())
bind("R", hl.dsp.exec_cmd("rofi -show drun"))
bind("T", hl.dsp.exec_cmd("rofi -show run"))
bind("W", hl.dsp.exec_cmd("rofi -show calc"))
bind("S", hl.dsp.exec_cmd("rofi -show emoji"))
bind("F", hl.dsp.window.fullscreen())
bind("SHIFT + P", hl.dsp.window.pseudo())
-- dwindle
bind("SHIFT + J", hl.dsp.layout("togglesplit"))

-- dwindle

bind("SHIFT + R", hl.dsp.exec_cmd("waypaper --random --state-file ~/.config/waypaper/state.ini"))
bind("SHIFT + L", hl.dsp.exec_cmd("hyprlock"))
bind("SHIFT + W", hl.dsp.exec_cmd("wlogout"))
bind("SHIFT + S", hl.dsp.exec_cmd('grim -g "$(slurp)"-| wl-copy'))
bind("I", hl.dsp.exec_cmd("hyprsysteminfo"))
bind("P", hl.dsp.exec_cmd("hyprpicker| wl-copy"))

-- dwindle

-- Clean up and Update

bind("SHIFT + U", hl.dsp.exec_cmd('kitty -e bash -c "' .. os.getenv("HOME") .. '/Documents/scripts/clean_system.sh"'))

-- Applications

bind("SHIFT + C", hl.dsp.exec_cmd("kitty"))
bind("SHIFT + F", hl.dsp.exec_cmd("firefox"))
bind("SHIFT + O", hl.dsp.exec_cmd("obsidian"))
bind("SHIFT + T", hl.dsp.exec_cmd("signal-desktop"))

-- Move focus with mainMod + vim keys

bind("H", hl.dsp.focus({ direction = "left" }))
bind("L", hl.dsp.focus({ direction = "right" }))
bind("K", hl.dsp.focus({ direction = "up" }))
bind("J", hl.dsp.focus({ direction = "down" }))

-- Move windows with mainMod + control + vim keys

bind("CONTROL + H", hl.dsp.window.move({ direction = "left" }))
bind("CONTROL + L", hl.dsp.window.move({ direction = "right" }))
bind("CONTROL + K", hl.dsp.window.move({ direction = "up" }))
bind("CONTROL + J", hl.dsp.window.move({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]

bind("1", hl.dsp.focus({ workspace = 1 }))
bind("2", hl.dsp.focus({ workspace = 2 }))
bind("3", hl.dsp.focus({ workspace = 3 }))
bind("4", hl.dsp.focus({ workspace = 4 }))
bind("5", hl.dsp.focus({ workspace = 5 }))
bind("6", hl.dsp.focus({ workspace = 6 }))
bind("7", hl.dsp.focus({ workspace = 7 }))
bind("8", hl.dsp.focus({ workspace = 8 }))
bind("9", hl.dsp.focus({ workspace = 9 }))
bind("0", hl.dsp.focus({ workspace = 10 }))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]

bind("SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
bind("SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
bind("SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
bind("SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
bind("SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
bind("SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
bind("SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
bind("SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
bind("SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
bind("SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

-- Example special workspace (scratchpad)

-- bind = $mainMod, S, togglespecialworkspace, magic

-- bind = $mainMod SHIFT, S, movetoworkspace, special:magic

-- Scroll through existing workspaces with mainMod + scroll

bind("mouse_down", hl.dsp.focus({ workspace = "e+1" }))
bind("mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging

bind("mouse:272", hl.dsp.window.drag(), { mouse = true })
bind("mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s 10%+"), { locked = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 10%-"), { locked = true })

-- Requires playerctl

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
