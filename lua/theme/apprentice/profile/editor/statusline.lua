-- APPRENTICE EDITOR STATUSLINE PROFILE
-- JUL 29, 2025

local grey = require("theme.apprentice.palette.grey")
local std = require("theme.apprentice.palette.std")

local M = {
	StatusLine = { fg = grey.Darker, bg = std.Ocre },
	StatusLineNC = { fg = std.Ocre, bg = grey.Grey },
	StatusLineTerm = { fg = grey.Darker, bg = std.Ocre },
	StatusLineTermNC = { fg = std.Ocre, bg = grey.Grey },
}

return M
