-- FRONTIER EDITOR SPELLING PROFILE
-- JUL 15, 2025

local cyan = require("palette.shared.cyan")
local red = require("palette.shared.red")
local style = require("highlights.style")
local yellow = require("palette.shared.yellow")

local M = {
	SpellBad = { fg = red.Normal, style = style.Undercurl },
	SpellCap = { fg = cyan.Lighter, style = style.Undercurl },
	SpellLocal = { fg = yellow.Normal, style = style.Undercurl },
	SpellRare = { fg = red.Normal, style = style.Undercurl },
}

return M
