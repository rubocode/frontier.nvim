-- SAMPLE LUA CODE
-- JUL 14, 2025

local lang = require("util.category.lang")
local plugin = require("util.category.plugin")
local std = require("util.category.std")
local syntax = require("util.category.syntax")

local loader = require("util.loader")

local M = {}

local init_colorscheme = function(theme, background)
	vim.cmd("highlight clear")
	vim.cmd("syntax reset")
	vim.o.background = background
	vim.g.colors_name = "uniwatch-" .. theme
end

local load_groups = function(theme, category, list)
	for _, item in pairs(list) do
		local path = "highlights." .. category .. "." .. item
		-- print("Working on: " .. path)
		loader.process(path, theme)
		-- print("PATH done!")
	end
end

function M.install(theme)
	init_colorscheme(theme, "dark")
	load_groups(theme, "std", std)
	load_groups(theme, "syntax", syntax)
	load_groups(theme, "lang", lang)
	load_groups(theme, "plugin", plugin)
end

return M
