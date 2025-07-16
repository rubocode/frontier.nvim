-- DEFAULT EDITOR STATUSLINE PROFILE
-- JUL 15, 2025

local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(_) end

local infuse = function()
	profile = {
		-- status line of not-current windows
		StatusLineNC = {},
		-- status line for terminal window
		StatusLineTerm = {},
		-- status line for not-current terminal window
		StatusLineTermNC = {},
		-- status lines
		StatusLine = {},
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
