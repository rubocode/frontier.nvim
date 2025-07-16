-- EDITOR SPELLING HIGHLIGHTS
-- JUL 03, 2025

local spelling = require("empty.profile.editor.spelling")
local mapper = require("util.mapper")

local M = {}
local infused = {}

local remap = function(theme)
	spelling = mapper.pick(theme, "profile.editor.spelling")
end

local infuse = function()
	infused.PROFILE = {
		SpellBad = spelling.SpellBad,
		SpellCap = spelling.SpellCap,
		SpellLocal = spelling.SpellLocal,
		SpellRare = spelling.SpellRare,
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
