-- STYLE UTILITY
-- JUL 19, 2025

local notify = require("util.notify")

local M = {}

function M.inject(opts, style)
	if style then
		if style.text then
			-- single style
			opts[style.text] = true
			notify.info("\t\tSTYLE: " .. style.text)
		else
			for _, s in pairs(style) do
				opts[s.text] = true
				notify.info("\t\tSTYLE: " .. s.text)
			end
		end
	end
	return opts
end

return M
