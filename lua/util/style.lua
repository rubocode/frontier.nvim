-- STYLE UTILITY
-- JUL 19, 2025

local M = {}

function M.inject(opts, style)
	if style then
		opts[style.text] = true
	end
	return opts
end

return M
