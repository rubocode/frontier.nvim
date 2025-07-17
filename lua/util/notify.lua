-- VERBOSE UTILITY
-- JUL 16, 2025

local M = {}

local VERBOSE = false
local DEBUG = false

local display = function(verbose, message)
	if verbose then
		vim.print(message)
	end
end

function M.display(condition, message)
	if condition then
		print(message)
	end
end

function M.debug(message)
	if DEBUG then
		display(true, message)
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
