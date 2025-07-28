-- FIREWATCH EDITOR GENERAL PROFILE
-- JUL 09, 2025

local duo = require("theme.firewatch.palette.duo")
local style = require("highlights.style")
local syntax = require("theme.firewatch.palette.syntax")
local uno = require("theme.firewatch.palette.uno")

local M = {
	ColorColumn = { bg = syntax.CursorLine },
	Conceal = {},
	Directory = { fg = uno.Uno1 },
	Error = {},
	FoldColumn = { fg = uno.Uno3, bg = syntax.CursorLine },
	Folded = { fg = syntax.Bg, bg = syntax.FoldBg },
	Ignore = {},
	MatchParen = { fg = duo.Duo1, bg = syntax.Bg, style = style.Bold },
	NonText = { fg = uno.Uno4 },
	Question = { fg = syntax.Accent },
	SpecialKey = { fg = syntax.FoldBg },
	TabLine = { fg = uno.Uno4 },
	TabLineFill = {},
	TabLineSel = { fg = syntax.Fg },
	ToolbarButton = {},
	ToolbarLine = {},
	VertSplit = { fg = syntax.FoldBg },
	Visual = { fg = syntax.Fg, bg = syntax.Bg, style = style.Reverse },
	VisualNOS = { fg = syntax.Fg, bg = syntax.Bg },
	bold = { style = style.Bold },
	helpLeadBlank = {},
	helpNormal = {},
}

return M
