-- EDITOR HIGHLIGHTS
-- JUL 06, 2025

local editor = require("empty.std.editor")

local M = {}
local infused = {}

local remap = function(theme)
	editor = require(theme .. ".std.editor")
end

local infuse = function()
	infused.PROFILE = {
		ColorColumn = editor.ColorColumn,
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
		bold = editor.bold,
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
