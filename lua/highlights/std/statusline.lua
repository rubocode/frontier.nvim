-- STATUSLINE HIGHLIGHTS
-- JUL 03, 2025

local line = require("theme.std.statusline")

local M = {}

M.PROFILE = {
	StatusLineNC = line.StatusLineNC,
	StatusLineTerm = line.StatusLineTerm,
	StatusLineTermNC = line.StatusLineTermNC,
	StatusLine = line.StatusLine,
}

M.LINKS = {}

return M
