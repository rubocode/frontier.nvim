-- FIREWATCH EDITOR GENERAL PROFILE
-- JUL 09, 2025

local canvas = require("theme.firewatch.archetype.canvas")
local text = require("theme.firewatch.archetype.text")

local style = require("highlights.style")
local syntax = require("theme.firewatch.palette.syntax")
local uno = require("theme.firewatch.palette.uno")

local M = {
	ColorColumn = { bg = syntax.CursorLine },
	Directory = { fg = uno.Uno1 },
	FoldColumn = { fg = uno.Uno3, bg = canvas.Darker },
	Folded = { fg = canvas.Normal, bg = syntax.FoldBg },
	NonText = { fg = uno.Uno4 },
	Question = { fg = syntax.Accent },
	ToolbarButton = {},
	ToolbarLine = {},
	VertSplit = { fg = syntax.FoldBg },
	Visual = { fg = text.Normal, bg = canvas.Nornal, style = style.Reverse },
	VisualNOS = { fg = text.Normal, bg = canvas.Normal },
	bold = { style = style.Bold },
}

return M
