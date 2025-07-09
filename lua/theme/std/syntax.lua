-- SYNTAX THEME COLORS
-- JUL 06, 2025

local cyan = require("colors.cyan")
local green = require("colors.green")
local grey = require("colors.grey")
local purple = require("colors.purple")
local red = require("colors.red")
local style = require("highlights.style")
local yellow = require("colors.yellow")

local M = {
	Comment = { fg = grey.Quiet },
	Conceal = { fg = grey.Normal },
	Constant = { fg = green.Lighter },
	Error = { fg = red.Normal, style = style.Reverse },
	Function = { fg = yellow.Normal },
	Identifier = { fg = green.Normal },
	Ignore = {},
	Parameter = { fg = purple.Normal },
	PreProc = { fg = cyan.Normal },
	Special = { fg = green.Normal },
	SpecialKey = { fg = grey.Quiet },
	Statement = { fg = yellow.Normal },
	String = { fg = green.Lighter },
	Title = {},
	Todo = { style = style.reverse },
	Type = { fg = red.Normal },
	Underlined = { fg = cyan.Normal, style = style.Underline },
	Variable = { fg = grey.Lighter },
	helpLeadBlank = { fg = cyan.Lighter },
	helpNormal = { fg = green.Lighter },
}

return M
