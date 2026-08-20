---@module 'hl'

-- Monitors
local system = require("categories.system")

-- Desktop Monitors
if system.is_desktop then
	-- main
	hl.monitor({
		output = "DP-2",
		mode = "3440x1440@144",
		position = "0x0",
		scale = 1.0,
	})
	-- secondary
	hl.monitor({
		output = "HDMI-A-1",
		mode = "1920x1080@60",
		position = "3440x0",
		scale = 1.0,
	})
	-- set primary
	hl.config({
		cursor = {
			default_monitor = "DP-2",
		},
	})
-- Laptop Monitors
elseif system.is_laptop then
	hl.monitor({
		output = "eDP-1",
		mode = "1440x900@120",
		position = "0x0",
		scale = 1.0,
	})
end

-- tv

-- monitor = HDMI-A-1, 2560x1440@100, 3440x0, 1.0
