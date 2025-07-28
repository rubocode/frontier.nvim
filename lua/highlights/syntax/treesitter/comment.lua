-- SYTNAX TREESITTER COMMENT HIGHLIGHTS
-- JUL 21, 2025
--
-- Refer the original list in the neovim source tree:
-- https://github.com/neovim/neovim/blob/master/runtime/colors/vim.lua
--

local comment = require("empty.profile.syntax.treesitter.comment")

local mapper = require("util.mapper")
local notify = require("util.notify")

local M = {}
local infused = {}

local remap = function(theme)
	comment = mapper.pick(theme, "profile.syntax.treesitter.comment")
end

local infuse = function()
	infused.PROFILE = {
		atCommentError = comment.atCommentError,
		atCommentWarning = comment.atCommentWarning,
		atCommentNote = comment.atCommentNote,
	}
	infused.LINKS = {
		["@comment"] = { link = "Comment" },
		["@comment.todo"] = { link = "Todo" },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
