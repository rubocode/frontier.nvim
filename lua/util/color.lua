-- COLOR UTILITY
-- JUL 19, 2025

local notify = require("util.notify")

local M = {}

function M.inject(opts, color, xg)
	if color then
		notify.info("\t\tCOLOR: <" .. xg .. "> " .. M.display(color))
		opts[xg] = color.hex
		opts["cterm" .. xg] = color.index
	end
	return opts
end

function M.display(color)
	local text = ""
	if color then
		text = "[" .. color.name .. "]" .. " type = " .. color.type
		if color.type == "xterm256" then
			text = text .. "  index = " .. color.index
		end
		text = text .. " hex = '" .. color.hex .. "'"
	end
	return text
end

return M
