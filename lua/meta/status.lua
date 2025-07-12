-- STATUS
-- JUL 12, 2025

local grey = require("palette.shared.grey")
local black = require("palette.shared.black")

local M = {
	Loud = { fg = grey.Loud, bg = grey.Darkest },
	Normal = { fg = black.Almost, bg = grey.Quiet },
	Quiet = { fg = grey.Darker, bg = grey.Darkest },
}

return M
