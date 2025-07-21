-- FIREWATCH SYNTAX BASICS PROFILE
-- JUL 15, 2025

local fg = require("theme.firewatch.map.foreground")
local type = require("theme.firewatch.map.type")
local odd = require("theme.firewatch.map.odd")

local M = {
	Comment = { fg = fg.Quiet },
	Constant = { fg = type.Constant },
	Debug = {},
	Delimiter = { fg = fg.Quiet },
	Function = { fg = type.Function },
	Identifier = { fg = type.Identifier },
	Keyword = { fg = type.Keyword },
	Label = {},
	Operator = { fg = fg.Accent },
	PreProc = {},
	Special = { fg = fg.Special },
	Statement = { fg = odd.Lighter },
	StorageClass = { fg = type.StorageClass },
	String = { fg = type.String },
	Tag = {},
	Title = {},
	Todo = {},
	Type = { fg = type.Type },
	Underlined = {},
}

return M
