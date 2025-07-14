-- NORMAL HIGHLIGHTS
-- JUL 03, 2025

local bg = require("std.background")
local fg = require("std.foreground")

local M = {}
local infused = {}

local remap = function(theme)
	bg = require(theme .. ".custom.background")
	fg = require(theme .. ".custom.foreground")
end

local infuse = function()
	infused.PROFILE = {
		LineNr = { fg = fg.Darker, bg = bg.Darker },
		Normal = { fg = fg.Normal, bg = bg.Normal },
		NormalFloat = { bg = bg.Darker },
		SignColumn = { bg = bg.Lighter },
	}
	infused.LINKS = {
		Terminal = { link = "Normal" },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
