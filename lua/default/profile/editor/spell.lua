-- DEFAULT EDITOR SPELL PROFILE
-- JUL 15, 2025

local M = {}
local profile = {}

-- TODO:  Not right now!
--

local remap = function(_) end

local infuse = function()
	profile = {
		SpellBad = {},
		SpellCap = {},
		SpellLocal = {},
		SpellRare = {},
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
