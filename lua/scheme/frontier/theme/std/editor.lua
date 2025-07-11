-- EDITOR THEME COLORS
-- JUL 09, 2025

local cyan = require("scheme.frontier.colors.cyan")
local green = require("scheme.frontier.colors.green")
local grey = require("scheme.frontier.colors.grey")
local red = require("scheme.frontier.colors.red")
local style = require("highlights.style")
local yellow = require("scheme.frontier.colors.yellow")

local bg = require("scheme.frontier.theme.meta.background")
local fg = require("scheme.frontier.theme.meta.foreground")

local M = {
	ColorColumn = { bg = red.Normal },
	Directory = { fg = fg.Directory },
	EndOfBuffer = { fg = grey.Normal },
	FoldColumn = { fg = grey.Dark, bg = bg.Normal },
	Folded = { fg = grey.Light, bg = bg.Normal },
	IncSearch = { fg = grey.Light, bg = red.Normal },
	MatchParen = { fg = yellow.Normal, bg = bg.Normal },
	NonText = { fg = grey.Light },
	Question = { fg = green.Light },
	Search = { fg = bg.Normal, bg = yellow.Normal },
	SignColumn = { fg = grey.Light, bg = grey.AlmostBlack },
	SpellBad = { fg = red.Normal, style = style.Undercurl },
	SpellCap = { fg = cyan.Lighr, style = style.Undercurl },
	SpellLocal = { fg = yellow.Normal, style = style.Undercurl },
	SpellRare = { fg = red.Normal, style = style.Undercurl },
	TabLine = { fg = yellow.Normal, bg = grey.Grey },
	TabLineFill = { fg = grey.Dark, bg = grey.Darker },
	TabLineSel = { fg = grey.Dark, bg = yellow.Normal },
	ToolbarButton = { fg = grey.Light, bg = grey.Light },
	ToolbarLine = { bg = bg.Normal },
	VertSplit = { fg = grey.Dark, bg = grey.Dark },
	Visual = { fg = grey.Lighter, bg = bg.Normal, style = style.Reverse },
	VisualNOS = { style = style.Underline },
}

return M
