---@module 'hl'

-- source = $HOME/.cache/wal/colors-hyprland.conf -> requires manual conversion
local colors_hyprland = dofile(os.getenv("HOME") .. "/.cache/wal/colors-hyprland.lua")

-- BACKGROUND

hl.config({
	background = {
		--path = screenshot
		path = os.getenv("HOME") .. "/code/dotfiles/Wallpapers/bunnies.png",
		color = colors_hyprland.background,
		blur_passes = 2,
		contrast = 1,
		brightness = 0.5,
		vibrancy = 0.2,
		vibrancy_darkness = 0.2,
	},
})
-- NOTE: Section 'background' may be a plugin or custom section; verify the output

-- GENERAL

hl.config({
	general = {
		no_fade_in = true,
		no_fade_out = true,
		hide_cursor = false,
		grace = 0,
		disable_loading_bar = true,
	},
})

-- INPUT FIELD

hl.config({
	["input-field"] = {
		size = { 250, 60 },
		outline_thickness = 2,
		dots_size = 0.2,
		-- Scale of input-field height, 0.2 - 0.8
		dots_spacing = 0.35,
		-- Scale of dots' absolute size, 0.0 - 1.0
		dots_center = true,
		outer_color = { "rgba(0", 0, 0, "0)" },
		inner_color = { "rgba(0", 0, 0, "0.5)" },
		font_color = colors_hyprland.foreground,
		fade_on_empty = false,
		rounding = -1,
		check_color = { "rgb(204", 136, "34)" },
		placeholder_text = "<i><span foreground=##cdd6f4 >Input Password...</span></i>",
		hide_input = false,
		position = { 0, -200 },
		halign = "center",
		valign = "center",
	},
})

-- DATE

hl.config({
	label = {
		text = { "cmd[update:1000] echo $(date + %A", "%B %d )" },
		color = colors_hyprland.foreground,
		font_size = 22,
		font_family = "JetBrains Mono",
		position = { 0, 300 },
		halign = "center",
		valign = "center",
	},
})
-- NOTE: Section 'label' may be a plugin or custom section; verify the output

-- TIME

hl.config({
	label = {
		text = "cmd[update:1000] echo $(date + %-I:%M )",
		color = colors_hyprland.foreground,
		font_size = 95,
		font_family = "JetBrains Mono Extrabold",
		position = { 0, 200 },
		halign = "center",
		valign = "center",
	},
})
-- NOTE: Section 'label' may be a plugin or custom section; verify the output

-- Profile Picture

hl.config({
	image = {
		path = os.getenv("HOME") .. "/code/dotfiles/PFP/monke.jpg",
		size = 100,
		border_size = 2,
		border_color = colors_hyprland.foreground,
		position = { 0, -75 },
		halign = "center",
		valign = "center",
	},
})
-- NOTE: Section 'image' may be a plugin or custom section; verify the output
