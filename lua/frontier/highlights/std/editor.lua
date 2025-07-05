-- vim editor highlight colors
--

local brighter = require("frontier.theme.colors.brighter")
local grey = require("frontier.theme.colors.grey")
local normal = require("frontier.theme.colors.normal")

local style = require("frontier.highlights.style")

local M = {}

M.CHANGES = {
	DiffAdd = { fg = normal.Green, bg = grey.Dark, style = style.Reverse },
	DiffChange = { fg = normal.Yellow, bg = grey.Dark, style = style.Reverse },
	DiffDelete = { fg = normal.Red, bg = grey.Dark, style = style.Reverse },
	DiffText = { fg = grey.Lighter, style = style.Reverse },
	Directory = { fg = grey.Darker },
	EndOfBuffer = { fg = grey.Normal },
	FoldColumn = { fg = grey.Darker, bg = grey.AlmostBlack },
	Folded = { fg = grey.Lighter, bg = grey.AlmostBlack },
	IncSearch = { fg = grey.Lighter, bg = normal.Red },
	MatchParen = { fg = normal.Yellow, bg = grey.AlmostBlack },
	NonText = { fg = grey.Lighter },
	Question = { fg = brighter.Green },
	Search = { fg = grey.AlmostBlack, bg = normal.Yellow },
	SignColumn = { fg = grey.Lighter, bg = grey.AlmostBlack },
	SpellBad = { fg = normal.Red, style = style.Undercurl },
	SpellCap = { fg = brighter.Cyan, style = style.Undercurl },
	SpellLocal = { fg = normal.Green, style = style.Undercurl },
	SpellRare = { fg = normal.Red, style = style.Undercurl },
	TabLine = { fg = normal.Yellow, bg = grey.Grey },
	TabLineFill = { fg = grey.Darker, bg = grey.Darker },
	TabLineSel = { fg = grey.Darker, bg = normal.Yellow },
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
