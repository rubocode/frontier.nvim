-- SYNTAX BASIC THEME COLORS
-- JUL 06, 2025

local cyan = require("palette.shared.cyan")
local green = require("palette.shared.green")
local grey = require("palette.shared.grey")
local red = require("palette.shared.red")
local style = require("highlights.style")

local M = {
	Comment = { fg = grey.Quiet },
	Constant = { fg = red.Lighter },
	Delimiter = { fg = grey.Lighter },
	Error = { fg = red.Normal, style = style.Reverse },
	Function = { fg = green.Normal },
	Identifier = { fg = green.Normal },
	Ignore = {},
	Keyword = { fg = grey.Lighter },
	Operator = { fg = grey.Lighter },
	PreProc = { fg = grey.Darker },
	Special = { fg = cyan.Normal },
	Statement = { fg = grey.Lighter },
	String = { fg = green.Lighter },
	Todo = { style = style.reverse },
	Type = { fg = red.Normal },
	Underlined = { style = style.Underline },
}

return M
