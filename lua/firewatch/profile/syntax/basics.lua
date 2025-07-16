-- FIREWATCH SYNTAX BASICS PROFILE
-- JUL 15, 2025

local duo = require("firewatch.palette.duo")
local syntax = require("firewatch.palette.syntax")
local uno = require("firewatch.palette.uno")

local fg = require("firewatch.map.foreground")
local type = require("firewatch.map.type")
local odd = require("firewatch.map.odd")

local M = {
	Comment = { fg = fg.Quiet },
	Constant = { fg = type.Constant },
	Delimiter = { fg = uno.Uno4 },
	Function = { fg = type.Function },
	Identifier = { fg = type.Identifier },
	Keyword = { fg = type.Keyword },
	Macro = { fg = fg.Lighter },
	Operator = { fg = fg.Accent },
	Special = { fg = fg.Special },
	Statement = { fg = odd.Lighter },
	StorageClass = { fg = type.StorageClass },
	String = { fg = type.String },
	Type = { fg = type.Type },
}

return M
