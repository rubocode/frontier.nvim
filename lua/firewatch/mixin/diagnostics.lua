-- SHARED DIAGNOSTICS COLORS
-- JUL 08, 2025

local style = require("highlights.style")
local syntax = require("firewatch.palette.syntax")

local M = {
	Text = {
		Error = { fg = syntax.Removed },
		Hint = {},
		Info = {},
		Ok = {},
		Warn = {},
	},
	Line = {
		Error = { fg = syntax.Removed, bg = syntax.Bg, style = style.Bold },
		Hint = {},
		Info = {},
		Ok = {},
		Warn = {},
	},
}

return M
