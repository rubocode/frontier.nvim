-- CURSOR THEME COLORS
-- JUL 06, 2025

local grey = require("scheme.frontier.colors.grey")
local style = require("highlights.style")

local bg = require("scheme.frontier.theme.meta.background")
local fg = require("scheme.frontier.theme.meta.foreground")

local M = {
	Cursor = { style = style.Reverse },
	CursorColumn = { fg = bg.Normal, bg = fg.Normal },
	CursorLine = { fg = grey.Light, bg = bg.CursorLine },
	CursorLineNr = { fg = grey.Light, bg = grey.Darker },
}

return M
