-- FRONTIER EDITOR SPELLING PROFILE
-- JUL 15, 2025

local cyan = require("palette.default.cyan")
local red = require("palette.default.red")
local style = require("highlights.style")
local yellow = require("palette.default.yellow")

local M = {
	SpellBad = { fg = red.Normal, style = style.Undercurl },
	SpellCap = { fg = cyan.Lighter, style = style.Undercurl },
	SpellLocal = { fg = yellow.Normal, style = style.Undercurl },
	SpellRare = { fg = red.Normal, style = style.Undercurl },
}

return M
