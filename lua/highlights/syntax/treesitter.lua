-- SYTNAX TREESITTER HIGHLIGHTS
-- JUL 13, 2025

local ts = require("empty.profile.syntax.treesitter")
local mapper = require("util.mapper")

local M = {}
local infused = {}

local remap = function(theme)
	ts = mapper.pick(theme, "profile.syntax.treesitter")
end

local infuse = function()
	infused.PROFILE = {
		-- JUL 21, 2025
		-- Having a defined @variable seems to create all kinds
		-- of havoc with LSP overrides.
		-- Clearing @variable before applying highlights seems
		-- to remedy the situation.
		-- Very strange!
		["@variable"] = ts.Variable,
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
