-- NORMAL HIGHLIGHTS
-- JUL 03, 2025

-- Define the interface so that properties can show up
-- on the dropdown menu.
local cursor = require("scheme.empty.theme.cursor")

local M = {}
local result = {}

local initialize = function()
	result.CHANGES = {
		Cursor = cursor.Cursor,
		CursorColumn = cursor.CursorColumn,
		CursorLine = cursor.CursorLine,
		CursorLineNr = cursor.CursorLineNr,
	}

	result.LINKS = {
		CursorIM = { link = "Cursor" },
	}
end

function M.get(name)
	cursor = require("scheme." .. name .. ".theme.cursor")
	initialize()
	return result
end

return M
