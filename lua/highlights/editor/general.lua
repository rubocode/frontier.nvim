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
		Directory = general.Directory,
		FoldColumn = general.FoldColumn,
		Folded = general.Folded,
		NonText = general.NonText,
		Question = general.Question,
		Title = general.Title,
		Todo = general.Todo,
		ToolbarButton = general.ToolbarButton,
		ToolbarLine = general.ToolbarLine,
		VertSplit = general.VertSplit,
		Visual = general.Visual,
		VisualNOS = general.VisualNOS,
		bold = general.bold,
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
