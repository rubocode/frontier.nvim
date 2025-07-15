-- FRONTIER EDITOR GENERAL PROFILE
-- JUL 09, 2025

local cyan = require("palette.shared.cyan")
local green = require("palette.shared.green")
local grey = require("palette.shared.grey")
local red = require("palette.shared.red")
local style = require("highlights.style")
local yellow = require("palette.shared.yellow")

local M = {
	ColorColumn = { bg = red.Normal },
	Conceal = { fg = grey.Normal },
	Directory = { fg = grey.Darker },
	EndOfBuffer = { fg = grey.Quiet },
	Error = { fg = red.Normal, style = style.Reverse },
	FoldColumn = { fg = grey.Darker, bg = grey.Darkest },
	Folded = { fg = grey.Lighter, bg = grey.Darkest },
	Ignore = {},
	IncSearch = { fg = grey.Lighter, bg = red.Normal },
	MatchParen = { fg = yellow.Normal, bg = grey.Darkest },
	NonText = { fg = grey.Quiet },
	Question = { fg = green.Lighter },
	Search = { fg = grey.Normal, bg = yellow.Normal },
	SpecialKey = { fg = grey.Quiet },
	SpellBad = { fg = red.Normal, style = style.Undercurl },
	SpellCap = { fg = cyan.Lighter, style = style.Undercurl },
	SpellLocal = { fg = yellow.Normal, style = style.Undercurl },
	SpellRare = { fg = red.Normal, style = style.Undercurl },
	TabLine = { fg = yellow.Normal, bg = grey.Darker },
	TabLineFill = { fg = grey.Darker, bg = grey.Darkest },
	TabLineSel = { fg = grey.Darker, bg = yellow.Normal },
	Title = {},
	Todo = { style = style.reverse },
	ToolbarButton = { fg = grey.Lighter, bg = grey.Lighter },
	ToolbarLine = { bg = grey.Darkest },
	Underlined = { style = style.Underline },
	VertSplit = { fg = grey.Darker, bg = grey.Darker },
	Visual = { fg = grey.Lighter, bg = grey.Darkest, style = style.Reverse },
	VisualNOS = { style = style.Underline },
	bold = { style = style.Bold },
	helpLeadBlank = { fg = cyan.Ligher },
	helpNormal = { fg = green.Lighter },
}

return M
