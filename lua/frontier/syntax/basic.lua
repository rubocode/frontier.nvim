-- SYNTAX BASIC THEME COLORS
-- JUL 06, 2025

local cyan = require("palette.shared.cyan")
local green = require("palette.shared.green")
local grey = require("palette.shared.grey")
local red = require("palette.shared.red")

local M = {
	Comment = { fg = grey.Quiet },
	Constant = { fg = red.Normal },
	Delimiter = { fg = grey.Darker },
	Function = { fg = green.Normal },
	Identifier = { fg = green.Normal },
	Macro = { fg = grey.Darker },
	Special = { fg = cyan.Normal },
	Statement = { fg = grey.Lighter },
	String = { fg = green.Lighter },
	Type = { fg = red.Lighter },
}

return M
