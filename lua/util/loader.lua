-- Perform the work of updating CHANGES and LINKS
--

local notify = require("util.notify")

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

local process_profile = function(profile)
	for group, v in pairs(profile) do
		local opts = {}
		notify.info("\t" .. group)
		opts = add_color_options(opts, v.fg, "fg")
		opts = add_color_options(opts, v.bg, "bg")
		opts = add_style_options(opts, v.style)
		vim.api.nvim_set_hl(0, group, opts)
	end
end

local process_links = function(links)
	for group, opts in pairs(links) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

function M.process(theme, group)
	notify.debug("Processing: [" .. theme .. "] " .. group)
	local mod = require(group).get(theme)
	process_profile(mod.PROFILE)
	process_links(mod.LINKS)
	notify.debug("Processed!")
end

return M
