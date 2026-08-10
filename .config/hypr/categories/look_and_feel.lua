---@module 'hl'

-- Look and Feel

-- Colors

local colors_hyprland = dofile(os.getenv("HOME") .. "/.cache/wal/colors-hyprland.lua")

hl.config({
	general = {
		-- gaps_in = 5
		-- gaps_out = 20
		gaps_in = 4,
		gaps_out = 8,
		border_size = 1,
		-- Set to true enable resizing windows by clicking and dragging on borders and gaps
		resize_on_border = false,
		allow_tearing = false,
		layout = "dwindle",
		col = {
			active_border = {
				colors = { tostring(colors_hyprland.color13), tostring(colors_hyprland.color13) },
				angle = 45,
			},
			inactive_border = colors_hyprland.background,
		},
	},
})

hl.config({
	decoration = {
		rounding = 8,
		rounding_power = 2,
		-- Default value is 2
		active_opacity = 1.0,
		inactive_opacity = 1.0,
		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = "rgba(1a1a1aee)",
		},
		blur = {
			enabled = true,
			size = 3,
			passes = 3,
			vibrancy = 0.1696,
		},
	},
})

-- Ref https://wiki.hyprland.org/Configuring/Workspace-Rules/

-- "Smart gaps" / "No gaps when only"

-- uncomment all if you wish to use that.

-- workspace = w[tv1], gapsout:0, gapsin:0

-- workspace = f[1], gapsout:0, gapsin:0

-- windowrule = bordersize 0, floating:0, onworkspace:w[tv1]

-- windowrule = rounding 0, floating:0, onworkspace:w[tv1]

-- windowrule = bordersize 0, floating:0, onworkspace:f[1]

-- windowrule = rounding 0, floating:0, onworkspace:f[1]

-- See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more

hl.config({
	dwindle = {
		preserve_split = true,
		-- You probably want this
	},
})

-- See https://wiki.hyprland.org/Configuring/Master-Layout/ for more

hl.config({
	master = {
		new_status = "master",
	},
})

hl.config({
	misc = {
		force_default_wallpaper = 0,
		-- Set to 0 or 1 to disable the anime mascot wallpapers
		disable_hyprland_logo = true,
		-- If true disables the random hyprland logo / anime girl background. :(
		layers_hog_keyboard_focus = false,
	},
})
