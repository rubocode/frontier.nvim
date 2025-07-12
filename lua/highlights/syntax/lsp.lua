-- SYNTAX HIGHLIGHTS
-- JUL 07, 2025

local M = {}
local infused = {}

local remap = function(_) end

local infuse = function()
	infused.PROFILE = {}
	infused.LINKS = {
		["@lsp.type.class"] = { link = "Structure" },
		["@lsp.type.comment"] = { link = "Comment" },
		["@lsp.type.decorator"] = { link = "Function" },
		["@lsp.type.enum"] = { link = "Structure" },
		["@lsp.type.enumMember"] = { link = "Constant" },
		["@lsp.type.function"] = { link = "Function" },
		["@lsp.type.interface"] = { link = "Structure" },
		["@lsp.type.macro"] = { link = "Macro" },
		["@lsp.type.method"] = { link = "Function" },
		["@lsp.type.namespace"] = { link = "Structure" },
		["@lsp.type.parameter"] = { link = "@variable.parameter" },
		["@lsp.type.property"] = { link = "Identifier" },
		["@lsp.type.struct"] = { link = "Structure" },
		["@lsp.type.type"] = { link = "Type" },
		["@lsp.type.typeParameter"] = { link = "TypeDef" },
		["@lsp.type.variable"] = { link = "@variable" },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
