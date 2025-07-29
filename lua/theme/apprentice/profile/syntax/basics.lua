-- APPRENTICE SYNTAX BASICS PROFILE
-- JUL 27, 2025

local uniq = require("theme.apprentice.archetype.unique")

local grey = require("theme.apprentice.palette.grey")
local light = require("theme.apprentice.palette.light")
local std = require("theme.apprentice.palette.std")

local M = {
	Comment = { fg = grey.Light },
	Constant = { fg = uniq.Fixed },
	Delimiter = { fg = uniq.Special },
	Function = { fg = uniq.Dynamic },
	Identifier = { fg = std.Blue },
	Keyword = { fg = light.Blue },
	Label = { fg = light.Blue },
	Operator = { fg = light.Blue },
	PreProc = { fg = std.Aqua },
	Special = { fg = uniq.Special },
	Statement = { fg = light.Blue },
	StorageClass = { fg = uniq.Striking },
	String = { fg = uniq.Prominent },
	Tag = { fg = uniq.Special },
	Type = { fg = uniq.Striking },
}

return M
