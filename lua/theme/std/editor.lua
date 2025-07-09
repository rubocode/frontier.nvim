-- EDITOR THEME COLORS
-- JUL 09, 2025

local cyan = require("colors.cyan")
local green = require("colors.green")
local grey = require("colors.grey")
local red = require("colors.red")
local style = require("highlights.style")
local yellow = require("colors.yellow")

local M = {
	Directory = { fg = grey.Darker },
	EndOfBuffer = { fg = grey.Normal },
	FoldColumn = { fg = grey.Darker, bg = grey.AlmostBlack },
	Folded = { fg = grey.Lighter, bg = grey.AlmostBlack },
	IncSearch = { fg = grey.Lighter, bg = red.Normal },
	MatchParen = { fg = yellow.Normal, bg = grey.AlmostBlack },
	NonText = { fg = grey.Lighter },
	Question = { fg = green.Lighter },
	Search = { fg = grey.AlmostBlack, bg = yellow.Normal },
	SignColumn = { fg = grey.Lighter, bg = grey.AlmostBlack },
	SpellBad = { fg = red.Normal, style = style.Undercurl },
	SpellCap = { fg = cyan.Lighter, style = style.Undercurl },
	SpellLocal = { fg = yellow.Normal, style = style.Undercurl },
	SpellRare = { fg = red.Normal, style = style.Undercurl },
	TabLine = { fg = yellow.Normal, bg = grey.Grey },
	TabLineFill = { fg = grey.Darker, bg = grey.Darker },
	TabLineSel = { fg = grey.Darker, bg = yellow.Normal },
	ToolbarButton = { fg = grey.Lighter, bg = grey.Lighter },
	ToolbarLine = { bg = grey.AlmostBlack },
	VertSplit = { fg = grey.Darker, bg = grey.Darker },
	Visual = { fg = grey.Loud, bg = grey.AlmostBlack, style = style.Reverse },
	VisualNOS = { style = style.Underline },
}

return M
