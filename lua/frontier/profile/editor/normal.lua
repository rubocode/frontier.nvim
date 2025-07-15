-- FRONTIER EDITOR NORMAL PROFILE
-- JUL 15, 2025

local black = require("palette.shared.black")
local grey = require("palette.shared.grey")

local M = {
	EndOfBuffer = { fg = grey.Quiet },
	LineNr = { fg = grey.Quiet, bg = black.Almost },
	Normal = { fg = grey.Normal, bg = black.Almost },
	NormalFloat = { bg = black.Almost },
	SignColumn = { bg = black.Almost },
}

return M
