-- HIGHLIGHT UTILITY
-- JUL 19, 2025

local color = require("util.color")
local notify = require("util.notify")
local style = require("util.style")

local M = {}

function M.translate(spec)
	local opts = {}
	opts = color.inject(opts, spec.fg, "fg")
	opts = color.inject(opts, spec.bg, "bg")
	opts = style.inject(opts, spec.style)
	return opts
end

function M.apply(group, spec)
	notify.info("\t" .. group)
	local opts = M.translate(spec)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.link(group, link)
	vim.api.nvim_set_hl(0, group, link)
end

return M
