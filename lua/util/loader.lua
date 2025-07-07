-- Perform the work of updating CHANGES and LINKS
--

local M = {}

local verbose = false

local add_color_options = function(opts, color, xg)
	if color then
		if verbose then
			print("> " .. xg .. " " .. color.i .. " " .. color.hex)
		end
		opts[xg] = color.hex
		opts["cterm" .. xg] = color.i
	end
	return opts
end

local add_style_options = function(opts, style)
	opts[style.text] = true
	return opts
end

local process_changes = function(profile)
	-- print("processing changes...")
	-- vim.print(changes)

	for k, v in pairs(profile) do
		local group = k
		local opts = {}

		opts = add_color_options(opts, v.fg, "fg")
		opts = add_color_options(opts, v.bg, "bg")
		opts = add_style_options(opts, v.style)

		-- italic = true works only when the italic version of the font is installed.
		-- otherwise, you just get the regular font.
		if verbose then
			vim.print(group, opts)
		end
		vim.api.nvim_set_hl(0, group, opts)
	end
end

local process_links = function(links)
	for group, opts in pairs(links) do
		if verbose then
			print(group, " -> ", opts.link)
		end
		vim.api.nvim_set_hl(0, group, opts)
	end
end

function M.process(path)
	print("Processing path: " .. path)
	local mod = require(path)
	process_changes(mod.PROFILE)
	process_links(mod.LINKS)
end

return M
