-- FIREWATCH EDITOR STATUSLINE PROFILE
-- JUL 06, 2025

local syntax = require("firewatch.palette.syntax")
local uno = require("firewatch.palette.uno")

local M = {
	-- status line of not-current windows
	StatusLineNC = { fg = uno.Uno4 },
	-- status line for terminal window
	StatusLineTerm = {},
	-- status line for not-current terminal window
	StatusLineTermNC = {},
	-- status lines
	StatusLine = { fg = syntax.Fg, bg = syntax.CursorLine },
}

return M
