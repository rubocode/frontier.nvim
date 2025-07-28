-- FIREWATCH BACKGROUND MAP
-- JUL 13, 2025

local syntax = require("theme.firewatch.palette.syntax")
local extra = require("theme.firewatch.palette.extra")

local M = {
	Darker = syntax.CursorLine,
	Normal = syntax.Bg,
	Lighter = extra.canvas.Lighter,
}

return M
