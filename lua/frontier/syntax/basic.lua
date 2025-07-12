-- SYNTAX BASIC THEME COLORS
-- JUL 06, 2025

local cyan = require("frontier.palette.cyan")
local green = require("frontier.palette.green")
local grey = require("frontier.palette.grey")
local red = require("frontier.palette.red")
local style = require("highlights.style")

local M = {
	Comment = { fg = grey.Quiet },
	Constant = { fg = red.Normal },
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
