-- DEFAULT EDITOR HELP PROFILE
-- JUL 29, 2025

local uniq = require("empty.archetype.unique")

local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	uniq = mapper.pick(theme, "archetype.unique")
end

local infuse = function()
	profile = {
		helpLeadBlank = { fg = uniq.Prominent },
		helpNormal = { fg = uniq.Prominent },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
