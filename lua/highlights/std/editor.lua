-- EDITOR HIGHLIGHT COLORS
-- JUL 06, 2025

local editor = require("scheme.empty.profile.editor")

local M = {}
local result = {}

local initialize = function()
	result.CHANGES = {
		Directory = editor.Directory,
		EndOfBuffer = editor.EndOfBuffer,
		FoldColumn = editor.FoldColumn,
		Folded = editor.Folded,
		IncSearch = editor.IncSearch,
		MatchParen = editor.MatchParen,
		NonText = editor.NonText,
		Question = editor.Question,
		Search = editor.Search,
		SignColumn = editor.SignColumn,
		SpellBad = editor.SpellBad,
		SpellCap = editor.SpellCap,
		SpellLocal = editor.SpellLocal,
		SpellRare = editor.SpellRare,
		TabLine = editor.TabLine,
		TabLineFill = editor.TabLineFill,
		TabLineSel = editor.TabLineSel,
		ToolbarButton = editor.ToolbarButton,
		ToolbarLine = editor.ToolbarLine,
		VertSplit = editor.VertSplit,
		Visual = editor.Visual,
		VisualNOS = editor.VisualNOS,
	}

	result.LINKS = {
		QuickFixLine = { link = "Search" },
		CurSearch = { link = "IncSearch" },
	}
end

function M.get(name)
	editor = require("scheme." .. name .. ".profile.editor")
	initialize()
	return result
end

return M
