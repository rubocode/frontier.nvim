-- DEFAULT EDITOR SPELL PROFILE
-- JUL 15, 2025

local odd = require("empty.archetype.odd")

local style = require("highlights.style")

local mapper = require("util.mapper")

local M = {}
local profile = {}

-- TODO: Not right now!
--

local remap = function(theme)
	odd = mapper.pick(theme, "archetype.odd")
end

local infuse = function()
	profile = {
		SpellBad = { fg = odd.Normal, style = style.Undercurl },
		SpellCap = { fg = odd.Lighter, style = style.Undercurl },
		SpellLocal = { fg = odd.Normal, style = style.Undercurl },
		SpellRare = { fg = odd.Normal, style = style.Undercurl },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
