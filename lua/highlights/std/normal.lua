-- NORMAL HIGHLIGHTS
-- JUL 03, 2025

local bg = require("scheme.frontier.theme.mixin.bg")
local fg = require("scheme.frontier.theme.mixin.fg")

local M = {}
local infused = {}

local remap = function(scheme)
	bg = require("scheme." .. scheme .. ".theme.mixin.bg")
	fg = require("scheme." .. scheme .. ".theme.mixin.fg")
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

function M.get(scheme)
	remap(scheme)
	infuse()
	return infused
end

return M
