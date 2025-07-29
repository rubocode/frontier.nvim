-- DEFAULT EDITOR TAB PROFILE
-- JUL 09, 2025

local canvas = require("empty.archetype.canvas")
local text = require("empty.archetype.text")
local uniq = require("empty.archetype.unique")

local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	canvas = mapper.pick(theme, "archetype.canvas")
	text = mapper.pick(theme, "archetype.text")
	uniq = mapper.pick(theme, "archetype.unique")
end

local infuse = function()
	profile = {
		TabLine = { fg = text.Lighter, bg = canvas.Lighter },
		TabLineFill = { fg = text.Lighter, bg = canvas.Darker },
		TabLineSel = { fg = canvas.Darker, bg = uniq.Prominent },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
