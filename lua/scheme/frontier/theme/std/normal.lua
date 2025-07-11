-- NORMAL THEME COLORS
-- JUL 06, 2025

local grey = require("scheme.frontier.colors.grey")
local bg = require("scheme.frontier.theme.meta.background")

local M = {
	LineNr = { fg = grey.Quiet, bg = bg.LineNr },
	Normal = { fg = grey.Normal, bg = bg.Normal },
	NormalFloat = { bg = bg.NormalFloat },
}

return M
