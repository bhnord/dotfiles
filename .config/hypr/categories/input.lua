---@module 'hl'

-- Input

-- https://wiki.hyprland.org/Configuring/Variables/#input

hl.config({
	input = {
		kb_layout = "us",
		kb_options = "grp:caps_toggle",
		follow_mouse = 1,
		sensitivity = 0,
		-- -1.0 - 1.0, 0 means no modification.
		accel_profile = "adaptive",
		touchpad = {
			natural_scroll = true,
			disable_while_typing = false,
		},
	},
})

hl.config({
	input = {
		kb_options = "ctrl:nocaps",
	},
})

hl.device({
	name = "tpps/2-elan-trackpoint",
	accel_profile = "flat",
})

-- Example per-device config

-- See https://wiki.hyprland.org/Configuring/Keywords/#per-device-input-configs for more

hl.device({
	name = "epic-mouse-v1",
	sensitivity = -0.5,
})
