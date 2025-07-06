-- STATUSLINE COLOR ABSTRACTION
-- JUL 06, 2025

local M = {
	StatusLineNC = {},
	StatusLineTerm = {},
	StatusLineTermNC = {},
	StatusLine = {},
	-- NEOVIM STATUSLINE SECTIONS
	Devinfo = {},
	Fileinfo = {},
	Filename = {},
	Inactive = {},
	-- NEOVIM MODES
	ModeCommand = {},
	ModeInsert = {},
	ModeNormal = {},
	ModeOther = {},
	ModeReplace = {},
	ModeVisual = {},
}

return M
