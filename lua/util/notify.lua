-- VERBOSE UTILITY
-- JUL 16, 2025

local M = {}

local VERBOSE = false

local display = function(verbose, message)
	if verbose then
		print(message)
	end
end

function M.display(verbose, message)
	if verbose then
		print(message)
	end
end

function M.info(message)
	display(VERBOSE, message)
end

function M.warning(message)
	display(VERBOSE, message)
end

function M.error(message)
	display(true, message)
end

return M
