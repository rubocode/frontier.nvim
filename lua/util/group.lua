-- GROUP UTILITY
-- JUL 19, 2025

local color = require("util.color")
local notify = require("util.notify")
local style = require("util.style")

local M = {}

function M.translate(spec)
	local opts = {}
	opts = color.translate(opts, spec.fg, "fg")
	opts = color.translate(opts, spec.bg, "bg")
	opts = style.translate(opts, spec.style)
	return opts
end

function M.apply(group, spec)
	notify.info("\t" .. group)
	local opts = M.translate(spec)
	-- vim.api.nvim_set_hl(0, group, opts)
	vim.print(group, opts)
end

return M
