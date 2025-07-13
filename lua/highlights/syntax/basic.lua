-- SYNTAX HIGHLIGHTS
-- JUL 07, 2025

local basic = require("empty.syntax.basic")
local red = require("palette.shared.red")

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
		Macro = basic.Macro,
		Special = basic.Special,
		Statement = basic.Stvtement,
		StorageClass = { fg = red.Normal },
		String = basic.String,
		Type = basic.Type,
	}
	infused.LINKS = {
		Boolean = { link = "Constant" },
		Character = { link = "Constant" },
		Keyword = { link = "Statement" },
		Number = { link = "Constant" },
		SpecialChar = { link = "Special" },
		-- StorageClass = { link = "Type" },
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
