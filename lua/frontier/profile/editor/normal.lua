-- FRONTIER EDITOR NORMAL PROFILE
-- JUL 15, 2025

local bg = require("frontier.map.background")
local fg = require("frontier.map.foreground")

local M = {
	EndOfBuffer = { fg = fg.Quiet },
	LineNr = { fg = fg.Quiet, bg = bg.Normal },
	Normal = { fg = fg.Normal, bg = bg.Normal },
	NormalFloat = { bg = bg.Normal },
	SignColumn = { bg = bg.Normal },
}

return M
