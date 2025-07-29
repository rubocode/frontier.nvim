-- APPRENTICE EDITOR TAB PROFILE
-- JUL 29, 2025

local grey = require("theme.apprentice.palette.grey")
local std = require("theme.apprentice.palette.std")

local M = {
	TabLine = { fg = std.Ocre, bg = grey.Grey },
	TabLineFill = { fg = grey.Grey, bg = grey.Grey },
	TabLineSel = { fg = grey.Darker, bg = std.Ocre },
}

return M
