-- VERBOSE UTILITY
-- JUL 16, 2025

local M = {}

local VERBOSE = false
local DEBUG = false

local notify = function(verbose, message)
	if verbose then
		vim.notify(message)
	end
end

function M.verbose()
	VERBOSE = true
	DEBUG = true
end

function M.quiet()
	VERBOSE = false
	DEBUG = true
end

function M.silent()
	VERBOSE = false
	DEBUG = false
end

function M.info(message)
	notify(VERBOSE, message)
end

function M.warning(message)
	notify(DEBUG, message)
end

function M.error(message)
	notify(true, message)
end

return M
