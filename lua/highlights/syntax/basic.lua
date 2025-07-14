-- SYNTAX HIGHLIGHTS
-- JUL 07, 2025

local syntax = require("model.syntax")

local M = {}
local infused = {}

local remap = function(theme)
	syntax = require(theme .. ".model.syntax")
end

local infuse = function()
	infused.PROFILE = {
		Comment = { fg = syntax.Quiet },
		Constant = { fg = syntax.Constant },
		Delimiter = { fg = syntax.Quiet },
		Function = { fg = syntax.Function },
		Identifier = { fg = syntax.Identifier },
		Keyword = { fg = syntax.Keyword },
		Macro = { fg = syntax.Darker },
		Operator = { fg = syntax.Accent },
		Special = { fg = syntax.Special },
		Statement = { fg = syntax.Lighter },
		StorageClass = { fg = syntax.Lighter },
		String = { fg = syntax.String },
		Type = { fg = syntax.Type },
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
