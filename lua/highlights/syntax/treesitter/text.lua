-- SYTNAX TREESITTER TEXT HIGHLIGHTS
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
		["@comment"] = { link = "Comment" },
		["@comment.todo"] = { link = "Todo" },
		["@markup.heading"] = { link = "Title" },
		["@markup.link"] = { link = "Identifier" },
		["@markup.link.url"] = { link = "Underlined" },
		["@markup.raw"] = { link = "Comment" },
		["@markup.underline"] = { link = "Underlined" },
		["@punctuation"] = { link = "Delimiter" },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
