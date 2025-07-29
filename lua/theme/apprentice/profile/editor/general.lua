-- APPRENTICE EDITOR GENERAL PROFILE
-- JUL 27, 2025

local canvas = require("theme.apprentice.archetype.canvas")
local diag = require("theme.apprentice.archetype.diagnostics")
local text = require("theme.apprentice.archetype.text")
local uniq = require("theme.apprentice.archetype.unique")

local grey = require("theme.apprentice.palette.grey")
local light = require("theme.apprentice.palette.light")

local style = require("highlights.style")

local M = {
	ColorColumn = { bg = grey.AlmostBlack },
	Conceal = { fg = text.Normal },
	Directory = { fg = light.Aqua },
	Error = diag.Text.Error,
	FoldColumn = { fg = grey.Light, bg = canvas.Darker },
	Folded = { fg = grey.Light, bg = canvas.Darker },
	MatchParen = { fg = light.Yellow, bg = canvas.Darker },
	NonText = { fg = grey.Medium },
	Question = { fg = uniq.Prominent },
	ToolbarButton = { fg = text.Normal, bg = grey.Medium },
	ToolbarLine = { bg = canvas.Darker },
	VertSplit = { fg = grey.Grey, bg = grey.Grey },
	Visual = { fg = canvas.Normal, bg = light.Blue },
	VisualNOS = { style = style.Underline },
	bold = { style = style.Bold },
}

return M
