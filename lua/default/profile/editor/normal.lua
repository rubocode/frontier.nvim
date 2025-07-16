-- DEFAULT EDITOR NORMAL PROFILE
-- JUL 15, 2025

local bg = require("empty.map.background")
local fg = require("empty.map.foreground")
local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	bg = mapper.load(theme, "map.background")
	fg = mapper.load(theme, "map.foreground")
end

local infuse = function()
	profile = {
		EndOfBuffer = { fg = fg.Quiet },
		LineNr = { fg = fg.Quiet, bg = bg.Normal },
		Normal = { fg = fg.Normal, bg = bg.Normal },
		NormalFloat = { bg = bg.Normal },
		SignColumn = { bg = bg.Normal },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
