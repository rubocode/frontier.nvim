-- NORMAL HIGHLIGHTS
-- JUL 03, 2025

local bg = require("std.background")
local text = require("std.text")

local M = {}
local infused = {}

local remap = function(theme)
	bg = require(theme .. ".custom.background")
	text = require(theme .. ".custom.text")
end

local infuse = function()
	infused.PROFILE = {
		LineNr = { fg = text.Light.Quiet, bg = bg.Darker },
		Normal = { fg = text.Normal, bg = bg.Normal },
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
