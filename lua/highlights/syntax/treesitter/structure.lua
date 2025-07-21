-- SYTNAX TREESITTER STRUCTURE HIGHLIGHTS
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
		["@module"] = { link = "StorageClass" },
		["@module.builtin"] = { link = "Special" },
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
