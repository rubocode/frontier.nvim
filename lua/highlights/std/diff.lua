-- DIFF HIGHLIGHT COLORS
-- JUL 06, 2025

local diff = require("scheme.empty.profile.diff")

local M = {}
local result = {}

local initialize = function()
	result.CHANGES = {
		DiffAdd = diff.Add,
		DiffChange = diff.Change,
		DiffDelete = diff.Delete,
		DiffText = diff.Text,
	}

	result.LINKS = {}
end

function M.get(name)
	diff = require("scheme." .. name .. ".profile.diff")
	initialize()
	return result
end

return M
