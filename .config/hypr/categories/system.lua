local M = {}

local function get_hostname()
	local f = io.open("/etc/hostname", "r")
	if not f then
		return "default"
	end
	local name = f:read("*l")
	f:close()
	return name and name:gsub("%s+", "") or "default"
end

M.hostname = get_hostname()
M.is_desktop = M.hostname == "bhnord-desktop"
M.is_laptop = M.hostname == "arch"

return M
