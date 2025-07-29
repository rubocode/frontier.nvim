-- EDITOR STATUSLINE HIGHLIGHTS
-- JUL 03, 2025

local line = require("empty.profile.editor.statusline")
local mapper = require("util.mapper")

local M = {}
local infused = {}

local remap = function(theme)
	line = mapper.pick(theme, "profile.editor.statusline")
end

local infuse = function()
	infused.PROFILE = {
		StatusLine = line.StatusLine,
		StatusLineNC = line.StatusLineNC,
		StatusLineTerm = line.StatusLineTerm,
		StatusLineTermNC = line.StatusLineTermNC,
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
