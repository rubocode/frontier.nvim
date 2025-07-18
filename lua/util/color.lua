-- COLOR UTILITY
-- JUL 19, 2025

local notify = require("util.notify")

local M = {}

function M.inject(opts, color, xg)
	if color then
		notify.info("\t\tCOLOR> " .. xg .. " " .. color.i .. " " .. color.hex)
		opts[xg] = color.hex
		opts["cterm" .. xg] = color.i
	end
	return opts
end

function M.display(color)
	vim.print(color)
end

return M
