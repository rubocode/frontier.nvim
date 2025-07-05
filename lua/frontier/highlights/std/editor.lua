-- vim editor highlight colors
--

local cyan = require("frontier.theme.colors.cyan")
local green = require("frontier.theme.colors.green")
local grey = require("frontier.theme.colors.grey")
local red = require("frontier.theme.colors.red")
local yellow = require("frontier.theme.colors.yellow")

local style = require("frontier.highlights.style")

local M = {}

M.CHANGES = {
	DiffAdd = { fg = green.Normal, bg = grey.Dark, style = style.Reverse },
	DiffChange = { fg = yellow.Normal, bg = grey.Dark, style = style.Reverse },
	DiffDelete = { fg = red.Normal, bg = grey.Dark, style = style.Reverse },
	DiffText = { fg = grey.Lighter, style = style.Reverse },
	Directory = { fg = grey.Darker },
	EndOfBuffer = { fg = grey.Normal },
	FoldColumn = { fg = grey.Darker, bg = grey.AlmostBlack },
	Folded = { fg = grey.Lighter, bg = grey.AlmostBlack },
	IncSearch = { fg = grey.Lighter, bg = red.Normal },
	MatchParen = { fg = yellow.Normal, bg = grey.AlmostBlack },
	NonText = { fg = grey.Lighter },
	Question = { fg = green.Brighter },
	Search = { fg = grey.AlmostBlack, bg = yellow.Normal },
	SignColumn = { fg = grey.Lighter, bg = grey.AlmostBlack },
	SpellBad = { fg = red.Normal, style = style.Undercurl },
	SpellCap = { fg = cyan.Brighter, style = style.Undercurl },
	SpellLocal = { fg = green.Normal, style = style.Undercurl },
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

M.LINKS = {
	QuickFixLine = { link = "Search" },
	CurSearch = { link = "IncSearch" },
}

return M
