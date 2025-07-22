-- SYTNAX TREESITTER VARIABLE HIGHLIGHTS
-- JUL 21, 2025
--
-- Refer the original list in the neovim source tree:
-- https://github.com/neovim/neovim/blob/master/runtime/colors/vim.lua
--

local uniq = require("empty.map.unique")

local mapper = require("util.mapper")

local M = {}
local infused = {}

local remap = function(theme)
	uniq = mapper.pick(theme, "map.unique")
end

local infuse = function()
	infused.PROFILE = {
		["@variable.parameter"] = { fg = uniq.Peculiar },
	}
	infused.LINKS = {
		["@attribute"] = { link = "Macro" },
		["@operator"] = { link = "Operator" },
		["@property"] = { link = "Identifier" },
		["@punctuation"] = { link = "Delimiter" },
		["@variable"] = {},
		["@variable.builtin"] = { link = "Special" },
		["@variable.member"] = { link = "Identifier" },
		["@variable.parameter.builtin"] = { link = "Special" },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
