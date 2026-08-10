---@module 'hl'

-----------------------------------------------------
-- Animations
-- name "Moving"
-----------------------------------------------------

-- 1. Define custom Bezier curves using the correct hl.curve API
hl.curve("overshot", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.curve("smoothOut", { type = "bezier", points = { { 0.5, 0 }, { 0.99, 0.99 } } })
hl.curve("smoothIn", { type = "bezier", points = { { 0.5, -0.5 }, { 0.68, 1.5 } } })

-- 2. Define the Animation tree rules { leaf, speed, curve, style }
local moving_animations = {
	{ "global", 10, "default" }, -- Sets initial fallback state
	{ "windows", 5, "overshot", "slide" },
	{ "windowsOut", 3, "smoothOut" },
	{ "windowsIn", 3, "smoothOut" },
	{ "windowsMove", 4, "smoothIn", "slide" },
	{ "border", 5, "default" },
	{ "fade", 5, "smoothIn" },
	{ "fadeDim", 5, "smoothIn" },
	{ "workspaces", 6, "default" },
}

-- 3. Register your animations using the loop
for _, a in ipairs(moving_animations) do
	hl.animation({
		leaf = a[1],
		enabled = true,
		speed = a[2],
		bezier = a[3],
		style = a[4],
	})
end
