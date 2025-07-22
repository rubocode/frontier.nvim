-- DEFAULT EDITOR GENERAL PROFILE
-- JUL 09, 2025

local canvas = require("empty.map.canvas")
local diag = require("empty.map.diagnostics")
local text = require("empty.map.text")
local odd = require("empty.map.odd")

local mapper = require("util.mapper")
local style = require("highlights.style")

local M = {}
local profile = {}

local remap = function(theme)
	canvas = mapper.pick(theme, "map.canvas")
	diag = mapper.pick(theme, "map.diagnostics")
	text = mapper.pick(theme, "map.text")
	odd = mapper.pick(theme, "map.odd")
end

local infuse = function()
	profile = {
		ColorColumn = { bg = odd.Normal },
		Conceal = { fg = text.Normal },
		Directory = { fg = text.Darker },
		Error = { fg = diag.Text.Error },
		FoldColumn = { fg = text.Darker, bg = canvas.Lighter },
		Folded = { fg = text.Lighter, bg = canvas.Lighter },
		Ignore = {},
		MatchParen = { fg = text.Lighter, bg = canvas.Darker },
		NonText = { fg = text.Quiet },
		Question = { fg = odd.Normal },
		SpecialKey = { fg = text.Quiet },
		TabLine = { fg = text.Lighter, bg = canvas.Lighter },
		TabLineFill = { fg = text.Darker, bg = canvas.Darker },
		TabLineSel = { fg = text.Darker, bg = odd.Normal },
		ToolbarButton = { fg = text.Lighter, bg = text.Lighter },
		ToolbarLine = { bg = canvas.Darker },
		VertSplit = { fg = text.Darker, bg = canvas.Lighter },
		Visual = { fg = text.Normal, bg = text.Normal },
		VisualNOS = { style = style.Underline },
		bold = { style = style.Bold },
		helpLeadBlank = { fg = odd.Normal },
		helpNormal = { fg = odd.Normal },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
