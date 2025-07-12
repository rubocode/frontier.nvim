-- SYNTAX BASIC THEME COLORS
-- JUL 06, 2025

local cyan = require("frontier.palette.cyan")
local green = require("frontier.palette.green")
local grey = require("frontier.palette.grey")
local red = require("frontier.palette.red")
local style = require("highlights.style")

local M = {
	Comment = { fg = grey.Quiet },
	Conceal = { fg = grey.Normal },
	Constant = { fg = red.Normal },
	Error = { fg = red.Normal, style = style.Reverse },
	Function = { fg = green.Normal },
	Identifier = { fg = green.Normal },
	Ignore = {},
	PreProc = { fg = grey.Darker },
	Special = { fg = cyan.Normal },
	SpecialKey = { fg = grey.Darker },
	Statement = { fg = grey.Lighter },
	String = { fg = green.Lighter },
	Title = {},
	Todo = { style = style.reverse },
	Type = { fg = red.Normal },
	Underlined = { style = style.Underline },
	helpLeadBlank = { fg = cyan.Lighter },
	helpNormal = { fg = green.Lighter },
}

return M
