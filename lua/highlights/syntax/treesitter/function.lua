-- SYTNAX TREESITTER FUNCTION HIGHLIGHTS
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
		["@constructor"] = { link = "Special" },
		["@function"] = { link = "Function" },
		["@function.builtin"] = { link = "Special" },
		["@function.macro"] = { link = "Macro" },
		["@function.method"] = { link = "Function" },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
