-- FRONTIER EDITOR CURSOR PROFILE
-- JUL 15, 2025

local bg = require("frontier.map.background")
local fg = require("frontier.map.foreground")

local M = {
	Cursor = { fg = bg.Normal, bg = fg.Normal },
	CursorColumn = { bg = bg.Normal },
	CursorLine = { bg = bg.Lighter },
	CursorLineNr = { fg = fg.Lighter },
}

return M
