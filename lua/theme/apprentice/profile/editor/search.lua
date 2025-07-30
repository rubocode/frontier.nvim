-- APPRENTICE EDITOR SEARCH PROFILE
-- JUL 29, 2025

local canvas = require("theme.apprentice.archetype.canvas")
local uniq = require("theme.apprentice.archetype.unique")

local grey = require("theme.apprentice.palette.grey")
local std = require("theme.apprentice.palette.std")

local style = require("highlights.style")

local M = {
	IncSearch = { fg = grey.Darker, bg = std.Red },
	-- JUL 30, 2025
	-- Changed the original to display the selected text in
	-- Telescope Highlights View.
	--
	-- Search = { fg = grey.Darker, bg = light.Yellow },
	Search = { fg = uniq.Accent, bg = canvas.Normal, style = style.Reverse },
}

return M
