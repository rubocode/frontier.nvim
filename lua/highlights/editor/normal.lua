-- EDITOR NORMAL HIGHLIGHTS
-- JUL 03, 2025

local normal = require("empty.profile.editor.normal")

local M = {}
local infused = {}

local remap = function(theme)
	normal = require(theme .. ".profile.editor.normal")
end

local infuse = function()
	infused.PROFILE = {
		EndOfBuffer = normal.EndOfBuffer,
		LineNr = normal.LineNr,
		Normal = normal.Normal,
		NormalFloat = normal.NormalFloat,
		SignColumn = normal.SignColumn,
	}
	infused.LINKS = {
		Terminal = { link = "Normal" },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
