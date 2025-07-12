-- CURSOR HIGHLIGHTS
-- JUL 03, 2025

local cursor = require("empty.std.cursor")

local M = {}
local infused = {}

local remap = function(scheme)
	cursor = require("scheme." .. scheme .. ".std.menu")
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

function M.get(scheme)
	remap(scheme)
	infuse()
	return infused
end

return M
