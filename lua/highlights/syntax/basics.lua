-- SYNTAX BASICS HIGHLIGHTS
-- JUL 07, 2025

local basics = require("empty.profile.syntax.basics")

local M = {}
local infused = {}

local remap = function(theme)
	basics = require(theme .. ".profile.syntax.basics")
end

local infuse = function()
	infused.PROFILE = {
		Comment = basics.Comment,
		Constant = basics.Constant,
		Delimiter = basics.Delimiter,
		Function = basics.Function,
		Identifier = basics.Identifier,
		Keyword = basics.Keyword,
		Macro = basics.Macro,
		Operator = basics.Operator,
		Special = basics.Special,
		Statement = basics.Statement,
		StorageClass = basics.StorageClass,
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
