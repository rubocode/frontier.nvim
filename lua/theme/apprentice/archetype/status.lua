-- APPRENTICE STATUS ARCHETYPE
-- JUL 27, 2025

local canvas = require("theme.apprentice.archetype.canvas")
local text = require("theme.apprentice.archetype.text")

local std = require("theme.apprentice.palette.std")
local grey = require("theme.apprentice.palette.grey")

local M = {
	Loud = { fg = text.Normal, bg = grey.Medium },
	Normal = { fg = canvas.Normal, bg = std.Aqua },
	Quiet = { fg = grey.Darker, bg = grey.Dark },
}

return M
