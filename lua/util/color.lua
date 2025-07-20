-- COLOR UTILITY
-- JUL 19, 2025

local notify = require("util.notify")

local M = {}

function M.inject(opts, color, xg)
	if color then
		notify.info("\t\tCOLOR: <" .. xg .. "> " .. M.display(color))
		if color.type == "xterm256" then
			opts[xg] = color.hex
			opts["cterm" .. xg] = color.index
		elseif color.type == "neovim" then
			-- It is not very clear to me at this time
			-- how to define color options using the neovim color palette.
			-- If you set "fg" in opts, nvim sets it up as "guifg".
			-- This works under "truecolor" but acts strange
			-- (in a way that I don't understand yet).
			-- So, I will stick to my initial goal of designing xterm256
			-- themes and give the neovim colors a rest.
			-- Let it be out of scope.
			-- I will leave the color palette in the project
			-- but will report and error if a neovim color is used
			-- anywhere.
			-- This will merely indicate where to engage
			-- if it becomes in scope in the future.

			notify.error("Unexpected use of a NEOVIM color: " .. M.display(color))
			-- opts[xg] = color.name
		end
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
