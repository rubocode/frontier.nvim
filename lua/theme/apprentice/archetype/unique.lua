-- APPRENTICE UNIQUE ARCHETYPE
-- JUL 27, 2025

local grey = require("theme.apprentice.palette.grey")
local light = require("theme.apprentice.palette.light")
local std = require("theme.apprentice.palette.std")

local M = {
	Accent = light.Blue,
	Distinct = grey.Lighter, -- They clear the Title (let's leave it normal)
	Dynamic = light.Yellow,
	Fixed = light.Orange,
	Peculiar = grey.Lighter,
	Prominent = light.Green,
	Special = std.Green,
	-- JUL 30, 2025
	-- TODO:
	-- light.Purple is not contrasting enough for this very critical
	-- color choice.
	-- See if there is a better choice
	--
	Striking = light.Purple,
}

return M
