-- STATUSLINE HIGHLIGHTS
-- JUL 03, 2025

local line = require("empty.std.statusline")

local M = {}
local infused = {}

local remap = function(theme)
	line = require(theme .. ".std.statusline")
end

local infuse = function()
	infused.PROFILE = {
		StatusLineNC = line.StatusLineNC,
		StatusLineTerm = line.StatusLineTerm,
		StatusLineTermNC = line.StatusLineTermNC,
		StatusLine = line.StatusLine,
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
