-- DEFAULT EDITOR GENERAL PROFILE
-- JUL 09, 2025

local bg = require("empty.map.background")
local diag = require("empty.support.diagnostics.text")
local fg = require("empty.map.foreground")
local odd = require("empty.map.odd")

local mapper = require("util.mapper")
local style = require("highlights.style")

local M = {}
local profile = {}

local remap = function(theme)
	bg = mapper.pick(theme, "map.background")
	diag = mapper.pick(theme, "support.diagnostics.text")
	fg = mapper.pick(theme, "map.foreground")
	odd = mapper.pick(theme, "map.odd")
end

local infuse = function()
	profile = {
		ColorColumn = { bg = odd.Normal },
		Conceal = { fg = fg.Normal },
		Directory = { fg = fg.Darker },
		Error = diag.Error,
		FoldColumn = { fg = fg.Darker, bg = bg.Lighter },
		Folded = { fg = fg.Lighter, bg = bg.Lighter },
		Ignore = {},
		MatchParen = { fg = fg.Lighter, bg = bg.Darkest },
		NonText = { fg = fg.Quiet },
		Question = { fg = odd.Normal },
		SpecialKey = { fg = fg.Quiet },
		TabLine = { fg = fg.Lighter, bg = bg.Lighter },
		TabLineFill = { fg = fg.Darker, bg = bg.Darkest },
		TabLineSel = { fg = fg.Darker, bg = odd.Normal },
		Title = {},
		Todo = { style = style.reverse },
		ToolbarButton = { fg = fg.Lighter, bg = fg.Lighter },
		ToolbarLine = { bg = bg.Darkest },
		Underlined = { style = style.Underline },
		VertSplit = { fg = fg.Darker, bg = bg.Lighter },
		Visual = { fg = bg.Normal, bg = fg.Normal },
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
