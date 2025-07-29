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
	notify.quiet()
end

local init_colorscheme = function(theme, background)
	vim.cmd("highlight clear")
	vim.cmd("syntax reset")
	vim.o.background = background

	if not theme == "frontier" then
		theme = "frontier-" .. theme
	end
	vim.g.colors_name = theme
end

local load_groups = function(theme, category, list)
	for _, item in pairs(list) do
		local module = "highlights." .. category .. "." .. item
		notify.warning("****************")
		notify.warning("Working on: " .. module)
		loader.process(theme, module)
		notify.warning("PATH done!")
	end
end

function M.install(theme)
	init_dev_settings()
	init_colorscheme(theme, "dark")
	load_groups(theme, "editor", editor)
	load_groups(theme, "syntax", syntax)
	load_groups(theme, "lang", lang)
	load_groups(theme, "plugin", plugin)
end

return M

-- To avoid weird syntactic and semantic collisions
-- DAWNFOX had these two variables clear and "M" remained "RED"
-- Not clear why it works!
-- JUL 14, 2025
--
-- Clearing these is no longer necessary.
-- The _treesitter_ and _lsp_ wiring seems
-- to have fixed the issue.
-- JUL 27, 2025
--
-- vim.cmd("highlight clear @variable")
-- vim.cmd("highlight clear @lsp")
-- vim.cmd("highlight clear @function")
-- vim.cmd("highlight clear @lsp.type.variable")
