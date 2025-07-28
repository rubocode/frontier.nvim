-- APPRENTICE EDITOR GENERAL PROFILE
-- JUL 27, 2025

local canvas = require("theme.apprentice.archetype.canvas")
local text = require("theme.apprentice.archetype.text")
local uniq = require("theme.apprentice.archetype.unique")

local grey = require("theme.apprentice.palette.grey")
local light = require("theme.apprentice.palette.light")
local std = require("theme.apprentice.palette.std")

local style = require("highlights.style")

local M = {
	ColorColumn = { bg = grey.Dark },
	Conceal = { fg = text.Normal },
	Directory = { fg = light.Aqua },
	Error = { fg = std.Red },
	FoldColumn = { fg = grey.Light, bg = canvas.Darker },
	Folded = { fg = grey.Light, bg = canvas.Darker },
	Ignore = {},
	MatchParen = { fg = light.Yellow, bg = canvas.Darker },
	NonText = { fg = grey.Medium },
	Question = { fg = uniq.Prominent },
	SpecialKey = { fg = grey.Medium },
	TabLine = { fg = std.Ocre, bg = grey.Grey },
	TabLineFill = { fg = grey.Grey, bg = grey.Grey },
	TabLineSel = { fg = grey.Darker, bg = std.Ocre },
	Todo = {},
	ToolbarButton = { fg = text.Normal, bg = grey.Medium },
	ToolbarLine = { bg = canvas.Darker },
	VertSplit = { fg = grey.Grey, bg = grey.Grey },
	Visual = { fg = light.Blue, bg = grey.Darker },
	VisualNOS = { style = style.Underline },
	bold = { style = style.Bold },
	helpLeadBlank = {},
	helpNormal = {},
}

return M
