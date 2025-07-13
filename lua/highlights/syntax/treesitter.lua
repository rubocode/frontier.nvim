-- TREESITTER TYPES
-- JUL 13, 2025

local ts = require("empty.syntax.treesitter")

local M = {}
local infused = {}

local remap = function(theme)
	ts = require(theme .. ".syntax.treesitter")
end

local infuse = function()
	infused.PROFILE = {
		["@variable.member"] = ts.VariableMember,
		["@variable.parameter"] = ts.VariableParameter,
	}
	infused.LINKS = {
		["@boolean"] = { link = "Boolean" },
		["@character"] = { link = "Character" },
		["@character.special"] = { link = "SpecialChar" },
		["@constant"] = { link = "Constant" },
		["@attribute"] = { link = "Macro" },
		["@comment"] = { link = "Comment" },
		["@constant.macro"] = { link = "Macro" },
		["@function"] = { link = "Function" },
		["@function.builtin"] = { link = "Special" },
		["@function.method"] = { link = "Function" },
		["@keyword"] = { link = "Keyword" },
		["@module"] = { link = "StorageClass" },
		["@module.builtin"] = { link = "Special" },
		["@number"] = { link = "Number" },
		["@number.float"] = { link = "Number" },
		["@operator"] = { link = "Keyword" },
		["@property"] = { link = "Identifier" },
		["@string"] = { link = "String" },
		["@string.regexp"] = { link = "@string.special" },
		["@string.special"] = { link = "SpecialChar" },
		["@type"] = { link = "Type" },
		["@type.builtin"] = { link = "Special" },
		["@type.definition"] = { link = "TypeDef" },
		["@type.qualifier"] = { link = "Type" },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
