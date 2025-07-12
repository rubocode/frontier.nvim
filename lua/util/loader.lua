-- Perform the work of updating CHANGES and LINKS
--

local M = {}

local verbose = false

local add_color_options = function(opts, color, xg)
	if color then
		if verbose then
			print("COLOR> " .. xg .. " " .. color.i .. " " .. color.hex)
		end
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

function M.process(path, theme)
	-- print("Processing: " .. path)
	local mod = require(path).get(theme)
	process_profile(mod.PROFILE)
	process_links(mod.LINKS)
	-- print("Done!")
end

return M
