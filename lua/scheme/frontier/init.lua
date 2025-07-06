-- SCHEME LOADER FOR frontier
-- JUL 03, 2025

local groups = require("util.groups")
local loader = require("util.loader")

local M = {}

local scheme = "frontier"

local init_colorscheme = function(name)
	-- print("Initializing colorscheme:" .. name)
	vim.cmd("highlight clear")
	vim.cmd("syntax reset")
	vim.o.background = "dark"
	vim.g.colors_name = name
end

local load_groups = function(scheme, category, list)
	for _, item in pairs(list) do
		local path = "highlights." .. category .. "." .. item
		loader.process(scheme, path)
	end
end

function M.setup()
	init_colorscheme(scheme)
	load_groups(scheme, "std", groups.STDS)
	load_groups(scheme, "lang", groups.LANGS)
	load_groups(scheme, "plugins", groups.PLUGINS)
end

return M
