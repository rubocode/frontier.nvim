-- EDITOR GENERAL HIGHLIGHTS
-- JUL 06, 2025

local general = require("profile.editor.general")

local M = {}
local infused = {}

local remap = function(theme)
	general = require(theme .. ".profile.editor.general")
end

local infuse = function()
	infused.PROFILE = {
		ColorColumn = general.ColorColumn,
		Conceal = general.Conceal,
		Directory = general.Directory,
		EndOfBuffer = general.EndOfBuffer,
		Error = general.Error,
		FoldColumn = general.FoldColumn,
		Folded = general.Folded,
		Ignore = general.Ignore,
		IncSearch = general.IncSearch,
		MatchParen = general.MatchParen,
		NonText = general.NonText,
		Question = general.Question,
		Search = general.Search,
		SpecialKey = general.SpecialKey,
		SpellBad = general.SpellBad,
		SpellCap = general.SpellCap,
		SpellLocal = general.SpellLocal,
		SpellRare = general.SpellRare,
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
	infused.LINKS = {
		QuickFixLine = { link = "Search" },
		CurSearch = { link = "IncSearch" },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
