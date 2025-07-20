-- STYLE UTILITY
-- JUL 19, 2025

local notify = require("util.notify")

local M = {}

function M.inject(opts, style)
	if style then
		if style.text then
			-- single value
			opts[style.text] = true
			notify.info("\t\tSTYLE: " .. style.text)
		else
			local text = nil
			for _, v in pairs(style) do
				text = table.concat({ text, v }, ",")
			end
			opts["style"] = text
			notify.info("\t\tSTYLE: " .. text)
		end
	end
	return opts
end

return M
