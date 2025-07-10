-- NORMAL HIGHLIGHTS
-- JUL 03, 2025

local normal = require("empty.std.normal")

local M = {}
local infused = {}

local remap = function(scheme)
	normal = require("scheme." .. scheme .. ".theme.std.normal")
end

local infuse = function()
	infused.PROFILE = {
		ColorColumn = normal.ColorColumn,
		LineNr = normal.LineNr,
		Normal = normal.Normal,
		NormalFloat = normal.NormalFloat,
	}
	infused.LINKS = {
		Terminal = { link = "Normal" },
	}
end

function M.get(scheme)
	remap(scheme)
	infuse()
	return infused
end

return M
