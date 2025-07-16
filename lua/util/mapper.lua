-- MAPPER UTILITY
-- JUL 16, 2025

local notify = require("util.notify")

local M = {}

local verbose = true

-- Loads a file if ity exists
--
function M.load(theme, config)
	local path = theme .. "." .. config
	notify.display(verbose, "Loading: [" .. theme .. "] " .. config)

	local result = nil
	local ok, _ = pcall(require, path)
	if ok then
		result = require(path)
		notify.display(verbose, "Loaded!")
	else
		notify.display(verbose, "NOT FOUND!")
	end
	return result
end

-- If the file does not exist in the theme,
-- look for an available default
--
function M.pick(theme, config)
	if verbose then
		print("Picking: [" .. theme .. "] " .. config)
	end

	local result = M.load(theme, config)
	if not result then
		result = M.load("default", config)
	else
		notify.display(verbose, "Picked!")
	end

	return result
end

return M
