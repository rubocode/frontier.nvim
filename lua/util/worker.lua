-- WORKER TO INSTALL THE COLORSCHEME
-- JUL 07, 2025

local editor = require("util.category.editor")
local lang = require("util.category.lang")
local plugin = require("util.category.plugin")
local syntax = require("util.category.syntax")

local loader = require("util.loader")
local notify = require("util.notify")

local M = {}

local init_dev_settings = function()
	-- notify.verbose()
	-- notify.quiet()
end

local init_colorscheme = function(theme, background)
	vim.cmd("highlight clear")
	vim.cmd("syntax reset")
	vim.o.background = background

	local name = theme

	if not name == "frontier" then
		name = "frontier-" .. name
	end
	vim.g.colors_name = name
end

local load_groups = function(theme, category, list)
	for _, item in pairs(list) do
		local group = "highlights." .. category .. "." .. item
		notify.warning("****************")
		notify.warning("Working on: " .. group)
		loader.process(theme, group)
		notify.warning("PATH done!")
	end
end

function M.install(theme)
	init_dev_settings()
	init_colorscheme(theme, "dark")

	-- To avoid weird syntactic and semantic collisions
	-- DAWNFOX had these two variables clear and "M" remained "RED"
	-- Not clear why it works!
	-- JUL 14, 2025
	vim.cmd("highlight clear @variable")
	vim.cmd("highlight clear @lsp")
	vim.cmd("highlight clear @function")
	-- vim.cmd("highlight clear @lsp.type.variable")

	load_groups(theme, "editor", editor)
	load_groups(theme, "syntax", syntax)
	load_groups(theme, "lang", lang)
	load_groups(theme, "plugin", plugin)
end

return M
