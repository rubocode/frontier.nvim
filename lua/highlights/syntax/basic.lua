-- SYNTAX HIGHLIGHTS
-- JUL 07, 2025

local basic = require("empty.syntax.basic")

local M = {}
local infused = {}

local remap = function(theme)
	basic = require(theme .. ".syntax.basic")
end

local infuse = function()
	infused.PROFILE = {
		Comment = basic.Comment,
		Constant = basic.Constant,
		Delimiter = basic.Delimiter,
		Function = basic.Function,
		Identifier = basic.Identifier,
		Keyword = basic.Keyword,
		Macro = basic.Macro,
		Special = basic.Special,
		Statement = basic.Statement,
		StorageClass = basic.StorageClass,
		String = basic.String,
		Type = basic.Type,
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
