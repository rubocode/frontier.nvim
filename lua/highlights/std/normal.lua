-- NORMAL HIGHLIGHTS
-- JUL 03, 2025

local normal = require("scheme.empty.theme.normal")

local M = {}
local result = {}

local initialize = function()
	result.CHANGES = {
		ColorColumn = normal.ColorColumn,
		LineNr = normal.LineNr,
		Normal = normal.Normal,
		NormalFloat = normal.NormalFloat,
	}

	result.LINKS = {
		Terminal = { link = "Normal" },
	}
end

function M.get(name)
	normal = require(name .. ".theme.normal")
	initialize()
	return result
end

return M
