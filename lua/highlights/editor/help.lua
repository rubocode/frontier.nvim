-- EDITOR HELP HIGHLIGHTS
-- JUL 29, 2025

local help = require("empty.profile.editor.help")
local mapper = require("util.mapper")

local M = {}
local infused = {}

local remap = function(theme)
	help = mapper.pick(theme, "profile.editor.help")
end

local infuse = function()
	infused.PROFILE = {
		helpLeadBlank = help.helpLeadBlank,
		helpNormal = help.helpNormal,
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
