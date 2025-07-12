-- SYNTAX BASIC THEME COLORS
-- JUL 06, 2025

local cyan = require("frontier.colors.cyan")
local green = require("frontier.colors.green")
local grey = require("frontier.colors.grey")
local red = require("frontier.colors.red")
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
