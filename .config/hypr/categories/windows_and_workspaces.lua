---@module 'hl'

-- Windows and Workspaces
local system = require("categories.system")

-- Ignore maximize requests from apps. You'll probably like this.

hl.window_rule({
	match = {
		class = ".*",
	},
	suppress_event = "maximize",
})

-- Fix some dragging issues with XWayland

--windowrule = nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0

--windowrule = match:class .*, no_focus 1, xwayland 1, floating 1, fullscreen 0, pinned 0

-- Rules

hl.window_rule({
	match = {
		class = "^(firefox)$",
		title = "^(Picture-in-Picture)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		class = "^(firefox)$",
		title = "^(Picture-in-Picture)$",
	},
	pin = true,
})

hl.window_rule({
	name = "opacity_0_85_0_85",
	match = {
		class = "^(Code)$",
	},
	opacity = "0.85 0.85",
})

hl.window_rule({
	name = "opacity_0_9_0_9",
	match = {
		class = "^(kitty)$",
	},
	opacity = "0.9 0.9",
})

hl.window_rule({
	name = "opacity_0_85_0_85",
	match = {
		class = "^(obsidian)$",
	},
	opacity = "0.85 0.85",
})

hl.window_rule({
	name = "opacity_0_85_0_85",
	match = {
		class = "^(org.gnome.Nautilus)$",
	},
	opacity = "0.85 0.85",
})

-- Workspaces

-- Laptop

--workspace = 1, monitor:eDP-1

--workspace = 2, monitor:eDP-1

--workspace = 3, monitor:eDP-1

--workspace = 4, monitor:eDP-1

-- Monitor

if system.is_desktop then
	hl.workspace_rule({
		workspace = 1,
		monitor = "DP-2",
	})

	hl.workspace_rule({
		workspace = 2,
		monitor = "DP-2",
	})

	hl.workspace_rule({
		workspace = 3,
		monitor = "DP-2",
	})

	hl.workspace_rule({
		workspace = 4,
		monitor = "DP-2",
	})

	hl.workspace_rule({
		workspace = 5,
		monitor = "HDMI-A-1",
	})

	hl.workspace_rule({
		workspace = 6,
		monitor = "HDMI-A-1",
	})

	hl.workspace_rule({
		workspace = 7,
		monitor = "HDMI-A-1",
	})

	hl.workspace_rule({
		workspace = 8,
		monitor = "HDMI-A-1",
	})
elseif system.is_laptop then
	hl.workspace_rule({
		workspace = 1,
		monitor = "eDP-1",
	})

	hl.workspace_rule({
		workspace = 2,
		monitor = "eDP-1",
	})

	hl.workspace_rule({
		workspace = 3,
		monitor = "eDP-1",
	})

	hl.workspace_rule({
		workspace = 4,
		monitor = "eDP-1",
	})
end

-- XWayland video bridge

hl.window_rule({
	match = {
		class = "^(xwaylandvideobridge)$",
	},
	opacity = "0.0 override",
	no_anim = true,
	no_initial_focus = true,
	max_size = { 1, 1 },
	no_blur = true,
	no_focus = true,
})

hl.window_rule({
	match = {
		class = "^(cava)$",
	},
	no_blur = true,
})
