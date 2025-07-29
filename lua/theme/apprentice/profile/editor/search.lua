-- APPRENTICE EDITOR SEARCH PROFILE
-- JUL 29, 2025

local grey = require("theme.apprentice.palette.grey")
local light = require("theme.apprentice.palette.light")
local std = require("theme.apprentice.palette.std")

local M = {
	IncSearch = { fg = grey.Darker, bg = std.Red },
	Search = { fg = grey.Darker, bg = light.Yellow },
}

return M
