-- CURSOR HIGHLIGHTS
-- JUL 03, 2025

local cursor = require("frontier.profile.std.cursor")

local M = {}

M.PROFILE = {
	Cursor = cursor.Cursor,
	CursorColumn = cursor.CursorColumn,
	CursorLine = cursor.CursorLine,
	CursorLineNr = cursor.CursorLineNr,
}

M.LINKS = {
	CursorIM = { link = "Cursor" },
}

return M
