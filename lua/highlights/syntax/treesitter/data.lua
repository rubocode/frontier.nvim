-- SYTNAX TREESITTER VARIABLE HIGHLIGHTS
-- JUL 21, 2025
--
-- Refer the original list in the neovim source tree:
-- https://github.com/neovim/neovim/blob/master/runtime/colors/vim.lua
--

local fg = require("empty.map.foreground")
local mapper = require("util.mapper")

local M = {}
local infused = {}

local remap = function(theme)
	fg = mapper.pick(theme, "map.foreground")
end

local infuse = function()
	infused.PROFILE = {
		["@variable.parameter"] = { fg = fg.Peculiar },
	}
	infused.LINKS = {
		["@variable"] = {},
		["@variable.builtin"] = { link = "Special" },
		["@variable.member"] = { link = "Identifier" },
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
