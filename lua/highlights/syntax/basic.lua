-- SYNTAX BASIC HIGHLIGHTS
-- JUL 07, 2025

local basics = require("profile.syntax.basics")

local M = {}
local infused = {}

local remap = function(theme)
	basics = require(theme .. ".profile.syntax.basics")
end

local infuse = function()
	infused.PROFILE = {
		Comment = basics.Quiet,
		Constant = basics.Constant,
		Delimiter = basics.Quiet,
		Function = basics.Function,
		Identifier = basics.Identifier,
		Keyword = basics.Keyword,
		Macro = basics.Darker,
		Operator = basics.Accent,
		Special = basics.Special,
		Statement = basics.String,
		StorageClass = basics.Lighter,
		String = basics.String,
		Type = basics.Type,
	}
	infused.LINKS = {
		Boolean = { link = "Constant" },
		Character = { link = "Constant" },
		Number = { link = "Constant" },
		SpecialChar = { link = "Special" },
		Structure = { link = "Type" },
		Typedef = { link = "Type" },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
