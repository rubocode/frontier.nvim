-- NORMAL HIGHLIGHTS
-- JUL 03, 2025

local line = require("scheme.empty.profile.statusline")

local M = {}
local result = {}

local initialize = function()
	result.CHANGES = {
		StatusLineNC = line,
		StatusLineTerm = line,
		StatusLineTermNC = line,
		StatusLine = line,
	}

	result.LINKS = {}
end

function M.get(name)
	line = require("scheme." .. name .. ".profile.statusline")
	initialize()
	return result
end

return M
