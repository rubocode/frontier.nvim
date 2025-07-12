-- NORMAL HIGHLIGHTS
-- JUL 03, 2025

local bg = require("empty.shared.bg")
local fg = require("empty.shared.fg")

local M = {}
local infused = {}

local remap = function(theme)
	bg = require(theme .. ".shared.bg")
	fg = require(theme .. ".shared.fg")
end

local infuse = function()
	infused.PROFILE = {
		LineNr = { fg = fg.LineNr, bg = bg.LineNr },
		Normal = { fg = fg.Normal, bg = bg.Normal },
		NormalFloat = { bg = bg.NormalFloat },
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
