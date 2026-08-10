---@module 'hl'

-----------------------------------------------------
-- Animations
-- name "Dynamic"
-----------------------------------------------------

-- 1. Define your custom curves using the correct API format
hl.curve("wind", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.curve("winIn", { type = "bezier", points = { { 0.1, 1.1 }, { 0.1, 1.1 } } })
hl.curve("winOut", { type = "bezier", points = { { 0.3, -0.3 }, { 0, 1 } } })
hl.curve("liner", { type = "bezier", points = { { 1, 1 }, { 1, 1 } } })

-- 2. Define the Animation tree rules { leaf, speed, curve, style }
local dynamic_animations = {
	{ "global", 10, "default" },
	{ "windows", 6, "wind", "slide" },
	{ "windowsIn", 6, "winIn", "slide" },
	{ "windowsOut", 5, "winOut", "slide" },
	{ "windowsMove", 5, "wind", "slide" },
	{ "border", 1, "liner" },
	{ "borderangle", 30, "liner", "loop" },
	{ "fade", 10, "default" },
	{ "workspaces", 5, "wind" },
}

-- 3. Register your animations using the loop
for _, a in ipairs(dynamic_animations) do
	hl.animation({
		leaf = a[1],
		enabled = true,
		speed = a[2],
		bezier = a[3],
		style = a[4],
	})
end
