-- EDITOR HIGHLIGHTS
-- JUL 06, 2025

local editor = require("empty.editor.general")

local M = {}
local infused = {}

local remap = function(theme)
	editor = require(theme .. ".editor.general")
end

local infuse = function()
	infused.PROFILE = {
		ColorColumn = editor.ColorColumn,
		Conceal = editor.Conceal,
		Directory = editor.Directory,
		EndOfBuffer = editor.EndOfBuffer,
		Error = editor.Error,
		FoldColumn = editor.FoldColumn,
		Folded = editor.Folded,
		Ignore = editor.Ignore,
		IncSearch = editor.IncSearch,
		MatchParen = editor.MatchParen,
		NonText = editor.NonText,
		Question = editor.Question,
		Search = editor.Search,
		SpecialKey = editor.SpecialKey,
		SpellBad = editor.SpellBad,
		SpellCap = editor.SpellCap,
		SpellLocal = editor.SpellLocal,
		SpellRare = editor.SpellRare,
		TabLine = editor.TabLine,
		TabLineFill = editor.TabLineFill,
		TabLineSel = editor.TabLineSel,
		Title = editor.Title,
		Todo = editor.Todo,
		ToolbarButton = editor.ToolbarButton,
		ToolbarLine = editor.ToolbarLine,
		Underlined = editor.Underlined,
		VertSplit = editor.VertSplit,
		Visual = editor.Visual,
		VisualNOS = editor.VisualNOS,
		bold = editor.bold,
		helpLeadBlank = editor.helpLeadBlank,
		helpNormal = editor.helpNormal,
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
