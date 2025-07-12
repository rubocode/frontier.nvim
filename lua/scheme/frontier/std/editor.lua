-- EDITOR THEME COLORS
-- JUL 09, 2025

local cyan = require("scheme.frontier.colors.cyan")
local green = require("scheme.frontier.colors.green")
local grey = require("scheme.frontier.colors.grey")
local red = require("scheme.frontier.colors.red")
local style = require("highlights.style")
local yellow = require("scheme.frontier.colors.yellow")

local M = {
	ColorColumn = { bg = red.Normal },
	Directory = { fg = grey.Darker },
	EndOfBuffer = { fg = grey.Normal },
	FoldColumn = { fg = grey.Darker, bg = grey.Darkest },
	Folded = { fg = grey.Lighter, bg = grey.Darkest },
	IncSearch = { fg = grey.Lighter, bg = red.Normal },
	MatchParen = { fg = yellow.Normal, bg = grey.Darkest },
	NonText = { fg = grey.Lighter },
	Question = { fg = green.Lighter },
	Search = { fg = grey.Normal, bg = yellow.Normal },
	SignColumn = { fg = grey.Light, bg = grey.Darkest },
	SpellBad = { fg = red.Normal, style = style.Undercurl },
	SpellCap = { fg = cyan.Lighter, style = style.Undercurl },
	SpellLocal = { fg = yellow.Normal, style = style.Undercurl },
	SpellRare = { fg = red.Normal, style = style.Undercurl },
	TabLine = { fg = yellow.Normal, bg = grey.Darker },
	TabLineFill = { fg = grey.Darker, bg = grey.Darkest },
	TabLineSel = { fg = grey.Darker, bg = yellow.Normal },
	ToolbarButton = { fg = grey.Lighter, bg = grey.Lighter },
	ToolbarLine = { bg = grey.Darkest },
	VertSplit = { fg = grey.Darker, bg = grey.Darker },
	Visual = { fg = grey.Lighter, bg = grey.Darkest, style = style.Reverse },
	VisualNOS = { style = style.Underline },
}

return M
