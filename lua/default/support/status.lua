-- DEFAULT STATUS
-- JUL 12, 2025

local grey = require("palette.default.grey")
local black = require("palette.default.black")

local M = {
	Loud = { fg = grey.Loud, bg = grey.Quiet },
	Normal = { fg = black.Almost, bg = grey.Darker },
	Quiet = { fg = grey.Darker, bg = grey.Darkest },
}

return M
