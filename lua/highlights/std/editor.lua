-- vim editor highlight colors
--

local cyan = require("frontier.colors.cyan")
local green = require("frontier.colors.green")
local grey = require("frontier.colors.grey")
local red = require("frontier.colors.red")
local yellow = require("frontier.colors.yellow")

local style = require("highlights.style")

local M = {}

M.CHANGES = {
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
