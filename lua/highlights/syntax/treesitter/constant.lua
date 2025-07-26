-- SYTNAX TREESITTER CONSTANT HIGHLIGHTS
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
		["@boolean"] = { link = "Boolean" },
		["@character"] = { link = "Character" },
		["@character.special"] = { link = "SpecialChar" },
		["@constant"] = { link = "Constant" },
		["@constant.builtin"] = { link = "Special" },
		["@constant.macro"] = { link = "Constant" },
		["@number"] = { link = "Number" },
		["@number.float"] = { link = "Float" },
		["@string"] = { link = "String" },
		["@string.escape"] = { link = "SpecialChar" }, --
		["@string.regexp"] = { link = "@string.special" },
		["@string.special"] = { link = "SpecialChar" },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
