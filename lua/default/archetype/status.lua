-- DEFAULT STATUS ARCHETYPE
-- JUL 12, 2025

local grey = require("palette.default.grey")
local black = require("palette.default.black")

local M = {
	Loud = { fg = grey.Loud, bg = grey.Quiet },
	Normal = { fg = black.Darker, bg = grey.Darker },
	Quiet = { fg = grey.Darker, bg = grey.Darker },
}

return M
