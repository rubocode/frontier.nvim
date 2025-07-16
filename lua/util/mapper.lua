-- MAPPER UTILITY
-- JUL 16, 2025

local M = {}

local verbose = true

-- Loads a file if ity exists
--
function M.load(theme, config)
	local path = theme .. "." .. config
	if verbose then
		print("Loading: [" .. theme .. "] " .. config)
	end
	local result = require(path)
	if verbose then
		print("Loaded!")
	end
	return result
end

-- If the file does not exist in the theme,
-- look for an available default
--
function M.pick(theme, config)
	local path = theme .. "." .. config
	if verbose then
		print("Picking: [" .. theme .. "] " .. config)
	end
	local result = require(path)
	if verbose then
		print("Picked!")
	end
	return result
end

return M
