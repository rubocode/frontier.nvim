-- WORKER TO INSTALL THE COLORSCHEME
-- JUL 07, 2025

local lang = require("util.category.lang")
local plugin = require("util.category.plugin")
local std = require("util.category.std")
local syntax = require("util.category.syntax")

local loader = require("util.loader")

local M = {}

local init_colorscheme = function(name, kind)
	vim.cmd("highlight clear")
	vim.cmd("syntax reset")
	vim.o.background = kind
	vim.g.colors_name = "uw-" .. name
end

local load_groups = function(scheme, category, list)
	for _, item in pairs(list) do
		local path = "highlights." .. category .. "." .. item
		-- print("Working on: " .. path)
		loader.process(path, scheme)
		-- print("PATH done!")
	end
end

function M.install(scheme)
	init_colorscheme(scheme, "dark")
	load_groups(scheme, "std", std)
	load_groups(scheme, "syntax", syntax)
	load_groups(scheme, "lang", lang)
	load_groups(scheme, "plugin", plugin)
end

return M
