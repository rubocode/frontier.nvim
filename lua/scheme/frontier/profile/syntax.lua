-- SYNTAX COLOR ABSTRACTION
-- JUL 06, 2025

local cyan = require("colors.rubo.cyan")
local green = require("colors.rubo.green")
local grey = require("colors.rubo.grey")
local red = require("colors.rubo.red")
local style = require("highlights.style")
local yellow = require("colors.rubo.yellow")

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
