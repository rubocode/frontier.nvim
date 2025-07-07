-- STATUSLINE HIGHLIGHTS
-- JUL 03, 2025

local line = require("profile.std.statusline")

local M = {}

M.PROFILE = {
	StatusLineNC = line.StatusLineNC,
	StatusLineTerm = line.StatusLineTerm,
	StatusLineTermNC = line.StatusLineTerNC,
	StatusLine = line.StatusLine,
}

M.LINKS = {}

return M
