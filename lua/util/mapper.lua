-- MAPPER UTILITY
-- JUL 16, 2025

local M = {}

local verbose = true

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
