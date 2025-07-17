-- EDITOR GENERAL HIGHLIGHTS
-- JUL 06, 2025

local general = require("empty.profile.editor.general")
local mapper = require("util.mapper")

local M = {}
local infused = {}

local remap = function(theme)
	general = mapper.pick(theme, "profile.editor.general")
end

local infuse = function()
	infused.PROFILE = {
		ColorColumn = general.ColorColumn,
		Conceal = general.Conceal,
		Directory = general.Directory,
		Error = general.Error,
		FoldColumn = general.FoldColumn,
		Folded = general.Folded,
		Ignore = general.Ignore,
		MatchParen = general.MatchParen,
		NonText = general.NonText,
		Question = general.Question,
		SpecialKey = general.SpecialKey,
		TabLine = general.TabLine,
		TabLineFill = general.TabLineFill,
		TabLineSel = general.TabLineSel,
		Title = general.Title,
		Todo = general.Todo,
		ToolbarButton = general.ToolbarButton,
		ToolbarLine = general.ToolbarLine,
		Underlined = general.Underlined,
		VertSplit = general.VertSplit,
		Visual = general.Visual,
		VisualNOS = general.VisualNOS,
		bold = general.bold,
		helpLeadBlank = general.helpLeadBlank,
		helpNormal = general.helpNormal,
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
