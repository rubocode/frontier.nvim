-- SYNTAX BASIC THEME COLORS
-- JUL 06, 2025

local duo = require("firewatch.palette.duo")
local style = require("highlights.style")
local syntax = require("firewatch.palette.syntax")
local uno = require("firewatch.palette.uno")

local M = {
	Boolean = { fg = duo.Duo2 },
	Character = { fg = duo.Duo2 },
	Comment = { fg = uno.Uno4 },
	Conditional = { fg = syntax.Accent },
	Constant = { fg = duo.Duo2 },
	Debug = {},
	Delimiter = { fg = uno.Uno4 },
	Error = { fg = syntax.Removed, bg = syntax.Bg, style = style.Bold },
	Exception = { fg = uno.Uno1 },
	Float = { fg = duo.Duo2 },
	Function = { fg = uno.Uno2 },
	Identifier = { fg = uno.Uno3 },
	Ignore = {},
	Keyword = { fg = uno.Uno1 },
	Label = { fg = uno.Uno1 },
	Number = { fg = duo.Duo2 },
	Operator = { fg = syntax.Accent },
	PreProc = { fg = uno.Uno1 },
	Repeat = { fg = duo.Duo2 },
	Special = { fg = uno.Uno3 },
	SpecialChar = {},
	SpecialComment = {},
	Statement = { fg = duo.Duo1 },
	StorageClass = { fg = duo.Duo2 },
	String = { fg = duo.Duo1 },
	Structure = { fg = uno.Uno1 },
	Tag = {},
	Todo = { fg = syntax.Added, bg = syntax.Bg },
	Type = { fg = duo.Duo1 },
	TypeDef = { fg = uno.Uno1 },
	Underlined = { fg = duo.Duo1, style = style.Underline },
}

return M
