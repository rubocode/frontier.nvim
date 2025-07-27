-- APPRENTICE STATUS ARCHETYPE
-- JUL 27, 2025

local canvas = require("theme.apprentice.archetype.canvas")
local grey = require("theme.apprentice.archetype.grey")

local M = {
	Loud = { fg = grey.Loud, bg = grey.Quiet },
	Normal = { fg = canvas.Darker, bg = grey.Darker },
	Quiet = { fg = grey.Darker, bg = canvas.Lighter },
}

return M
