-- EDITOR SPELLING HIGHLIGHTS
-- JUL 03, 2025

local spell = require("empty.profile.editor.spell")
local mapper = require("util.mapper")

local M = {}
local infused = {}

local remap = function(theme)
	spell = mapper.pick(theme, "profile.editor.spell")
end

local infuse = function()
	infused.PROFILE = {
		SpellBad = spell.SpellBad,
		SpellCap = spell.SpellCap,
		SpellLocal = spell.SpellLocal,
		SpellRare = spell.SpellRare,
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
