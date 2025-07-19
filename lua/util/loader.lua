-- Perform the work of updating CHANGES and LINKS
--

local notify = require("util.notify")
local cfg = require("util.config")
local hl = require("util.highlight")

local M = {}

local add_color_options = function(opts, color, xg)
	if color then
		notify.info("\t\tCOLOR> " .. xg .. " " .. color.i .. " " .. color.hex)
		opts[xg] = color.hex
		opts["cterm" .. xg] = color.i
	end
	return opts
end

local add_style_options = function(opts, style)
	if style then
		opts[style.text] = true
	end
	return opts
end

local process_group = function(group, spec)
	local opts = {}
	notify.info("\t" .. group)
	opts = add_color_options(opts, spec.fg, "fg")
	opts = add_color_options(opts, spec.bg, "bg")
	opts = add_style_options(opts, spec.style)
	vim.api.nvim_set_hl(0, group, opts)
end

local process_profile = function(profile)
	for group, spec in pairs(profile) do
		hl.apply(group, spec)
	end
end

local process_links = function(links)
	for group, spec in pairs(links) do
		vim.api.nvim_set_hl(0, group, spec)
	end
end

function M.process(theme, group)
	notify.warning("Processing: " .. cfg.notice(theme, group))
	local mod = require(group).get(theme)
	process_profile(mod.PROFILE)
	process_links(mod.LINKS)
	notify.warning("Processed!")
end

return M
