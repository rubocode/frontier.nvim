-- FIREWATCH SYNTAX BASICS PROFILE
-- JUL 15, 2025

local text = require("theme.firewatch.archetype.text")
local type = require("theme.firewatch.archetype.type")
local odd = require("theme.firewatch.archetype.odd")
local uniq = require("theme.firewatch.archetype.unique")

local M = {
	Comment = { fg = text.Quiet },
	Constant = { fg = type.Constant },
	Debug = {},
	Delimiter = { fg = text.Quiet },
	Function = { fg = type.Function },
	Identifier = { fg = type.Identifier },
	Keyword = { fg = type.Keyword },
	Label = {},
	Operator = { fg = uniq.Accent },
	PreProc = {},
	Special = { fg = uniq.Special },
	Statement = { fg = odd.Lighter },
	StorageClass = { fg = type.StorageClass },
	String = { fg = type.String },
	Tag = {},
	Title = { uniq.Distinct },
	Todo = {},
	Type = { fg = type.Type },
	Underlined = {},
}

return M
