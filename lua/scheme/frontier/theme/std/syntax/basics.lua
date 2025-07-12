-- SYNTAX BASICS THEME COLORS
-- JUL 06, 2025

local cyan = require("scheme.frontier.colors.cyan")
local green = require("scheme.frontier.colors.green")
local grey = require("scheme.frontier.colors.grey")
local purple = require("scheme.frontier.colors.purple")
local red = require("scheme.frontier.colors.red")
local style = require("highlights.style")
local yellow = require("scheme.frontier.colors.yellow")

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
	atFunctionBuiltin = { fg = yellow.Normal },
	atModule = { fg = yellow.Normal },
	atTypeBuiltin = { fg = yellow.Normal },
	atVariable = { fg = grey.Normal },
	atVariableParameter = { fg = grey.Normal },
	helpLeadBlank = { fg = cyan.Lighter },
	helpNormal = { fg = green.Lighter },
}

return M
