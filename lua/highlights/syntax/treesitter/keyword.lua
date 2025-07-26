-- SYTNAX TREESITTER KEYWORD HIGHLIGHTS
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
		["@keyword.conditional"] = { link = "Conditional" },
		["@keyword.repeat"] = { link = "Repeat" },
		["@keyword.type"] = { link = "Keyword" },
		["@label"] = { link = "Label" },
		["@keyword"] = { link = "Keyword" },
		["@keyword.exception"] = { link = "Exception" },
		["@keyword.import"] = { link = "Include" },
		["@keyword.directive"] = { link = "Define" },
		["@keyword.debug"] = { link = "Debug" },
		["@tag"] = { link = "Tag" },
		["@tag.builtin"] = { link = "Special" },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
