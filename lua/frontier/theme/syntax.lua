-- SYNTAX COLOR ABSTRACTION
-- JUL 06, 2025

local cyan = require("frontier.colors.cyan")
local green = require("frontier.colors.green")
local grey = require("frontier.colors.grey")
local red = require("frontier.colors.red")
local style = require("highlights.style")
local yellow = require("frontier.colors.yellow")

local M = {
	Comment = { fg = grey.Quiet },
	Conceal = { fg = grey.Normal },
	Constant = { fg = red.Normal },
	Error = { fg = red.Normal, style = style.Reverse },
	Function = { fg = yellow.Normal },
	Identifier = { fg = green.Normal },
	Ignore = {},
	PreProc = { fg = cyan.Normal },
	Special = { fg = green.Normal },
	SpecialKey = { fg = grey.Quiet },
	Statement = { fg = grey.Lighter },
	String = { fg = green.Lighter },
	Title = {},
	Todo = { style = style.reverse },
	Type = { fg = red.Lighter },
	Underlined = { fg = cyan.Normal, style = style.Underline },
	helpLeadBlank = {},
	helpNormal = {},
}

return M
