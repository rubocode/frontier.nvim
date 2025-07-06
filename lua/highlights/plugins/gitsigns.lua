-- GITSIGNS HIGHLIGHTS
-- JUL 05, 2025

local diff = require("scheme.empty.profile.diff")

local M = {}
local result = {}

local initialize = function()
	result.CHANGES = {
		GitSignsAdd = diff.Add,
		GitSignsChange = diff.Change,
		GitSignsDelete = diff.Delete,
	}

	result.LINKS = {}
end

function M.get(name)
	diff = require("scheme." .. name .. ".profile.diff")
	initialize()
	return result
end

return M
