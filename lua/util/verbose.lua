-- VERBOSE UTILITY
-- JUL 16, 2025

local M = {}

function M.notify(verbose, message)
	if verbose then
		print(message)
	end
end

return M
