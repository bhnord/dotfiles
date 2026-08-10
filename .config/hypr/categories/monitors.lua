---@module 'hl'

-- Monitors

-- Laptop

-- monitor = eDP-1, 1440x900@120, 0x0, 1.0

-- Desktop

-- primary

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

-- tv

-- monitor = HDMI-A-1, 2560x1440@100, 3440x0, 1.0

hl.config({
	cursor = {
		default_monitor = "DP-2",
	},
})
