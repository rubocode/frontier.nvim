-- DEFAULT EDITOR NORMAL PROFILE
-- JUL 15, 2025

local canvas = require("empty.archetype.canvas")
local text = require("empty.archetype.text")

local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	canvas = mapper.pick(theme, "archetype.canvas")
	text = mapper.pick(theme, "archetype.text")
end

local infuse = function()
	profile = {
		EndOfBuffer = { fg = text.Quiet },
		LineNr = { fg = text.Quiet, bg = canvas.Normal },
		Normal = { fg = text.Normal, bg = canvas.Normal },
		NormalFloat = { bg = canvas.Darker },
		SignColumn = { bg = canvas.Darker },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
