-- APPRENTICE STATUS ARCHETYPE
-- JUL 27, 2025

local canvas = require("theme.apprentice.archetype.canvas")

local std = require("theme.apprentice.palette.std")
local grey = require("theme.apprentice.palette.grey")

local M = {
	Loud = { fg = grey.Lighter, bg = grey.Medium },
	Normal = { fg = canvas.Normal, bg = std.Aqua },
	Quiet = { fg = grey.Light, bg = grey.Dark },
}

return M
