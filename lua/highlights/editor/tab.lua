-- EDITOR GENERAL HIGHLIGHTS
-- JUL 06, 2025

local tab = require("empty.profile.editor.tab")
local mapper = require("util.mapper")

local M = {}
local infused = {}

local remap = function(theme)
	tab = mapper.pick(theme, "profile.editor.tab")
end

local infuse = function()
	infused.PROFILE = {
		TabLine = tab.TabLine,
		TabLineFill = tab.TabLineFill,
		TabLineSel = tab.TabLineSel,
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
