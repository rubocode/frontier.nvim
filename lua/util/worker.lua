-- WORKER TO INSTALL THE COLORSCHME
-- JUL 07, 2025

local groups = require("util.groups")
local loader = require("util.loader")

local M = {}

local init_colorscheme = function(name)
	-- print("Initializing colorscheme: " .. name)
	vim.cmd("highlight clear")
	vim.cmd("syntax reset")
	vim.o.background = "dark"
	vim.g.colors_name = name
end

local load_groups = function(name, category, list)
	for _, item in pairs(list) do
		local path = "highlights." .. category .. "." .. item
		loader.process(name, path)
	end
end

function M.install(name)
	init_colorscheme(name)
	load_groups(name, "std", groups.STDS)
	load_groups(name, "lang", groups.LANGS)
	load_groups(name, "plugins", groups.PLUGINS)
end

return M
