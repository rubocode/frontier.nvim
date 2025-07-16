-- SYTNAX TREESITTER HIGHLIGHTS
-- JUL 13, 2025

local ts = require("empty.profile.syntax.treesitter")

local M = {}
local infused = {}

local remap = function(theme)
	ts = require(theme .. ".profile.syntax.treesitter")
end

local infuse = function()
	infused.PROFILE = {
		-- Having a defined @variable creates all kinds of havoc
		-- We clear it at the end of loading all the highlight groups
		-- ["@variable"] = nil,
		["@variable.builtin"] = ts.atVariableBuiltin,
		["@variable.member"] = ts.atVariableMember,
		["@variable.parameter"] = ts.atVariableParameter,
	}
	infused.LINKS = {
		["@boolean"] = { link = "Boolean" },
		["@character"] = { link = "Character" },
		["@character.special"] = { link = "SpecialChar" },
		["@constant"] = { link = "Constant" },
		["@attribute"] = { link = "Macro" },
		["@comment"] = { link = "Comment" },
		["@constant.macro"] = { link = "Macro" },
		["@constant.builtin"] = { link = "Constant" },
		["@function"] = { link = "Function" },
		["@function.builtin"] = { link = "Special" },
		["@function.method"] = { link = "Function" },
		["@keyword"] = { link = "Keyword" },
		["@module"] = { link = "StorageClass" },
		["@module.builtin"] = { link = "Special" },
		["@number"] = { link = "Number" },
		["@number.float"] = { link = "Number" },
		["@operator"] = { link = "Operator" },
		["@property"] = { link = "Identifier" },
		["@string"] = { link = "String" },
		["@string.regexp"] = { link = "@string.special" },
		["@string.special"] = { link = "SpecialChar" },
		["@type"] = { link = "Type" },
		["@type.builtin"] = { link = "Special" },
		["@type.definition"] = { link = "TypeDef" },
		["@type.qualifier"] = { link = "Type" },
		["@variable.parameter.builtin"] = { link = "Special" },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
