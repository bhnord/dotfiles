---@module 'hl'

-- Animations

-- 1. Define Bezier Curves in a clean list
local beziers = {
	{ "easeOutQuint", 0.23, 1, 0.32, 1 },
	{ "easeInOutCubic", 0.65, 0.05, 0.36, 1 },
	{ "linear", 0, 0, 1, 1 },
	{ "almostLinear", 0.5, 0.5, 0.75, 1.0 },
	{ "quick", 0.15, 0, 0.1, 1 },
}

-- 2. Define Animations in a clean list { leaf, speed, curve, style }
local animations = {
	{ "global", 10, "default" },
	{ "border", 5.39, "easeOutQuint" },
	{ "windows", 4.79, "easeOutQuint" },
	{ "windowsIn", 4.1, "easeOutQuint", "popin 87%" },
	{ "windowsOut", 1.49, "linear", "popin 87%" },
	{ "fadeIn", 1.73, "almostLinear" },
	{ "fadeOut", 1.46, "almostLinear" },
	{ "fade", 3.03, "quick" },
	{ "layers", 3.81, "easeOutQuint" },
	{ "layersIn", 4, "easeOutQuint", "fade" },
	{ "layersOut", 1.5, "linear", "fade" },
	{ "fadeLayersIn", 1.79, "almostLinear" },
	{ "fadeLayersOut", 1.39, "almostLinear" },
	{ "workspaces", 1.94, "easeOutQuint" },
	{ "workspacesIn", 1.21, "easeOutQuint" },
}

-- 3. Automatically register everything using loops
for _, b in ipairs(beziers) do
	hl.bezier({ name = b[1], x1 = b[2], y1 = b[3], x2 = b[4], y2 = b[5] })
end

for _, a in ipairs(animations) do
	hl.animation({ leaf = a[1], enabled = true, speed = a[2], bezier = a[3], style = a[4] })
end
