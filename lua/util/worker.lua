-- WORKER TO INSTALL THE COLORSCHME
-- JUL 07, 2025

local std = require("util.category.std")
local lang = require("util.category.lang")
local plugin = require("util.category.plugin")

local loader = require("util.loader")

local M = {}

local init_colorscheme = function(name)
	vim.cmd("highlight clear")
	vim.cmd("syntax reset")
	vim.o.background = "dark"
	vim.g.colors_name = name
end

local load_groups = function(category, list)
	for _, item in pairs(list) do
		local path = "highlights." .. category .. "." .. item
		-- print("Working on: " .. path)
		loader.process(path)
		-- print("PATH done!")
	end
end

function M.install(name)
	init_colorscheme(name)
	load_groups("std", std)
	load_groups("lang", lang)
	load_groups("plugin", plugin)
end

return M
