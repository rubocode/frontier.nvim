-- DEFAULT EDITOR GENERAL PROFILE
-- JUL 09, 2025

local canvas = require("empty.archetype.canvas")
local diag = require("empty.archetype.diagnostics")
local text = require("empty.archetype.text")
local uniq = require("empty.archetype.unique")

local style = require("highlights.style")

local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	canvas = mapper.pick(theme, "archetype.canvas")
	diag = mapper.pick(theme, "archetype.diagnostics")
	text = mapper.pick(theme, "archetype.text")
	uniq = mapper.pick(theme, "archetype.unique")
end

local infuse = function()
	profile = {
		ColorColumn = { fg = canvas.Darker, bg = text.Quiet },
		Conceal = { fg = text.Normal },
		Directory = { fg = text.Darker },
		Error = diag.Text.Error,
		FoldColumn = { fg = text.Darker, bg = canvas.Lighter },
		Folded = { fg = text.Lighter, bg = canvas.Lighter },
		Ignore = {},
		MatchParen = { fg = uniq.Distinct, bg = canvas.Normal, style = style.Bold },
		NonText = { fg = text.Quiet },
		Question = { fg = uniq.Pominent },
		SpecialKey = { fg = text.Quiet },
		TabLine = { fg = text.Lighter, bg = canvas.Lighter },
		TabLineFill = { fg = text.Lighter, bg = canvas.Darker },
		TabLineSel = { fg = canvas.Darker, bg = uniq.Prominent },
		ToolbarButton = { fg = text.Lighter, bg = text.Lighter },
		ToolbarLine = { bg = canvas.Darker },
		VertSplit = { fg = text.Darker, bg = canvas.Lighter },
		Visual = { fg = text.Normal, bg = canvas.Normal, style = style.Reverse },
		VisualNOS = { style = style.Underline },
		bold = { style = style.Bold },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
