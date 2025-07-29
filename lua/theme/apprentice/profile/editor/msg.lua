-- APPRENTICE EDITOR MSG PROFILE
-- JUL 29, 2025

local grey = require("theme.apprentice.palette.grey")
local light = require("theme.apprentice.palette.light")
local std = require("theme.apprentice.palette.std")

local style = require("highlights.style")

local M = {
	ErrorMsg = { fg = std.Red, bg = grey.Darker, style = style.Reverse },
	ModeMsg = { fg = light.Green, bg = grey.Darker, style = style.Reverse },
	MoreMsg = { fg = std.Aqua },
	WarningMsg = { fg = std.Red },
}

return M
