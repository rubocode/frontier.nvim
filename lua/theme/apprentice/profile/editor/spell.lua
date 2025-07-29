-- APPRENTICE EDITOR SPELL PROFILE
-- JUL 29, 2025

local light = require("theme.apprentice.palette.light")
local std = require("theme.apprentice.palette.std")

local style = require("highlights.style")

local M = {
	SpellBad = { fg = std.Red, style = style.Undercurl },
	SpellCap = { fg = light.Aqua, style = style.Undercurl },
	SpellLocal = { fg = std.Green, style = style.Undercurl },
	SpellRare = { fg = light.Orange, style = style.Undercurl },
}

return M
