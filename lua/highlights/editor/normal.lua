-- NORMAL HIGHLIGHTS
-- JUL 03, 2025

local bg = require("std.background")
local light = require("std.text.light")

local M = {}
local infused = {}

local remap = function(theme)
	bg = require(theme .. ".custom.background")
	light = require(theme .. ".custom.text.light")
end

local infuse = function()
	infused.PROFILE = {
		LineNr = { fg = light.Quiet, bg = bg.Darker },
		Normal = { fg = light.Normal, bg = bg.Normal },
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
