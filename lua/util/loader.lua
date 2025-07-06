-- Perform the work of updating CHANGES and LINKS
--

local M = {}

local verbose = false

local add_color_options = function(opts, color, xg)
	if color.type == "xterm256" then
		opts[xg] = color.hex
		opts["cterm" .. xg] = color.i
	end
	return opts
end

local add_style_options = function(opts, style)
	opts[style.text] = true
	return opts
end

local process_changes = function(changes)
	-- print("processing changes...")
	-- vim.print(changes)

	for k, v in pairs(changes) do
		local group = k
		local opts = {}

		if group == "Comment" then
			-- verbose = true
		end

		if v.fg then
			if verbose then
				print(group .. "> fg: " .. v.fg.i .. " " .. v.fg.hex)
			end
			opts = add_color_options(opts, v.fg, "fg")
		end

		if v.bg then
			if verbose then
				print(group .. "> bg: " .. v.bg.i .. " " .. v.bg.hex)
			end
			opts = add_color_options(opts, v.bg, "bg")
		end

		if v.style then
			if verbose then
				print(group .. "> style: " .. v.style.text)
			end
			opts = add_style_options(opts, v.style)
		end

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

function M.process(scheme, path)
	-- print("Processing scheme: " .. scheme .. " path: " .. path)
	local mod = require(path).get(scheme)
	process_changes(mod.CHANGES)
	process_links(mod.LINKS)
end

return M
