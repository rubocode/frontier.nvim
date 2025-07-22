-- DEFAULT EDITOR NORMAL PROFILE
-- JUL 15, 2025

local canvas = require("empty.map.canvas")
local text = require("empty.map.text")

local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	canvas = mapper.pick(theme, "map.canvas")
	text = mapper.pick(theme, "map.text")
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
