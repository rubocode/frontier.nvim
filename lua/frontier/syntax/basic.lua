-- SYNTAX BASIC THEME COLORS
-- JUL 06, 2025

local cyan = require("palette.shared.cyan")
local green = require("palette.shared.green")
local grey = require("palette.shared.grey")
local red = require("palette.shared.red")
local orange = require("palette.shared.orange")

local M = {
	Comment = { fg = grey.Quiet },
	Constant = { fg = red.Normal },
	Delimiter = { fg = grey.Darker },
	Function = { fg = green.Normal },
	Identifier = { fg = green.Normal },
	Keyword = { fg = grey.Lighter },
	Macro = { fg = grey.Darker },
	Operator = { fg = grey.Lighter },
	Special = { fg = cyan.Normal },
	Statement = { fg = grey.Lighter },
	StorageClass = { fg = grey.Lighter },
	String = { fg = green.Lighter },
	Type = { fg = orange.Normal },
}

return M
