-- SYTNAX TREESITTER VARIABLE HIGHLIGHTS
-- JUL 21, 2025
--
-- Refer the original list in the neovim source tree:
-- https://github.com/neovim/neovim/blob/master/runtime/colors/vim.lua
--

local M = {}
local infused = {}

local remap = function(_) end

local infuse = function()
	infused.PROFILE = {}
	infused.LINKS = {
		["@variable"] = {},
		["@variable.builtin"] = { link = "Special" },
		["@variable.member"] = { link = "Identifier" },
		["@variable.parameter"] = { link = "Peculiar" },
		["@attribute"] = { link = "Macro" },
		["@property"] = { link = "Identifier" },
		["@variable.parameter.builtin"] = { link = "Special" },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
