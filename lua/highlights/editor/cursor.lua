-- EDITOR CURSOR HIGHLIGHTS
-- JUL 03, 2025

local cursor = require("empty.profile.editor.cursor")

local mapper = require("util.mapper")

local M = {}
local infused = {}

local remap = function(theme)
	cursor = mapper.pick(theme, "profile.editor.cursor")
end

local infuse = function()
	infused.PROFILE = {
		Cursor = cursor.Cursor,
		CursorColumn = cursor.CursorColumn,
		CursorLine = cursor.CursorLine,
		CursorLineNr = cursor.CursorLineNr,
	}
	infused.LINKS = {
		CursorIM = { link = "Cursor" },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
