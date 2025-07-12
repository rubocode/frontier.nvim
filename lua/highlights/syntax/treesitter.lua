-- SYNTAX HIGHLIGHTS
-- JUL 07, 2025

local ts = require("empty.syntax.treesitter")

local M = {}
local infused = {}

local remap = function(scheme)
	ts = require("scheme." .. scheme .. ".theme.syntax.treesitter")
end

local infuse = function()
	infused.PROFILE = {
		["@function.builtin"] = ts.FunctionBuiltin,
		["@module"] = ts.Module,
		["@type.builtin"] = ts.TypeBuiltin,
		["@variable"] = ts.Variable,
		["@variable.parameter"] = ts.VariableParameter,
	}
	infused.LINKS = {}
end

function M.get(scheme)
	remap(scheme)
	infuse()
	return infused
end

return M
