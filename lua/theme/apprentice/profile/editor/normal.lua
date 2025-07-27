-- APPRENTICE EDITOR NORMAL PROFILE
-- JUL 28, 2025

local canvas = require("theme.apprentice.archetype.canvas")
local text = require("theme.apprentice.archetype.text")

local grey = require("theme.apprentice.palette.grey")

local M = {
	EndOfBuffer = { fg = grey.Medium },
	LineNr = { fg = text.Quiet, bg = canvas.Darker },
	Normal = { fg = text.Normal, bg = canvas.Normal },
	NormalFloat = { bg = canvas.Darker },
	SignColumn = { bg = canvas.Darker },
}

return M
