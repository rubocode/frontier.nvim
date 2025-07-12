-- EDITOR THEME COLORS
-- JUL 09, 2025

local style = require("highlights.style")
local syntax = require("firewatch.palette.syntax")
local uno = require("firewatch.palette.uno")
local duo = require("firewatch.palette.duo")

local M = {
	ColorColumn = { bg = syntax.CursorLine },
	Conceal = {},
	Directory = { fg = uno.Uno1 },
	EndOfBuffer = {},
	FoldColumn = { fg = uno.Uno3, bg = syntax.CursorLine },
	Folded = { fg = syntax.Bg, bg = syntax.FoldBg },
	IncSearch = { fg = syntax.Bg, bg = uno.Uno4 },
	MatchParen = { fg = syntax.Bg, bg = syntax.Accent },
	NonText = { fg = uno.Uno4 },
	Question = { fg = syntax.Accent },
	Search = { fg = syntax.Bg, bg = uno.Uno4 },
	SignColumn = { bg = uno.Uno4 },
	SpecialKey = { fg = syntax.FoldBg },
	SpellBad = {},
	SpellCap = {},
	SpellLocal = {},
	SpellRare = {},
	TabLine = { fg = uno.Uno4 },
	TabLineFill = {},
	TabLineSel = { fg = syntax.Fg },
	Title = { fg = duo.Duo2 },
	ToolbarButton = {},
	ToolbarLine = {},
	VertSplit = { fg = syntax.FoldBg },
	Visual = { bg = syntax.Selection },
	VisualNOS = { bg = syntax.Selection },
	bold = { style = style.Bold },
}

return M
