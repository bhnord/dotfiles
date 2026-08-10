---@module 'hl'

-- Autostart

-- Idle

-- Wallpaper

-- Manage removable media like flash drives

-- Autostart
hl.on("hyprland.start", function()
	hl.exec_cmd("hypridle >> ~/hypridle.log")
	hl.exec_cmd("waypaper --restore --state-file ~/.config/waypaper/state.ini")
	hl.exec_cmd("hyprsunset --temperature 5000")
	hl.exec_cmd("wayle panel start")
	hl.exec_cmd("udiskie")
end)
