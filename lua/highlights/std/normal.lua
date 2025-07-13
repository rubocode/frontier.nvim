-- NORMAL HIGHLIGHTS
-- JUL 03, 2025

local bg = require("meta.bg")
local fg = require("meta.fg")

local M = {}
local infused = {}

local remap = function(theme)
	bg = require(theme .. ".meta.bg")
	fg = require(theme .. ".meta.fg")
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
