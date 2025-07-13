-- SYNTAX HIGHLIGHTS
-- JUL 07, 2025

local ts = require("empty.syntax.treesitter")

local M = {}
local infused = {}

local remap = function(theme)
	ts = require(theme .. ".syntax.treesitter")
end

local infuse = function()
	infused.PROFILE = {
		["@function.builtin"] = ts.FunctionBuiltin,
		["@module"] = ts.Module,
		["@type.builtin"] = ts.TypeBuiltin,
		["@variable"] = ts.Variable,
		["@variable.parameter"] = ts.VariableParameter,
	}
	infused.LINKS = {
		["@constant"] = { link = "Constant" },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
