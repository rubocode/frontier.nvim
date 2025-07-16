-- MAPPER UTILITY
-- JUL 16, 2025

local notify = require("util.notify")

local M = {}

local verbose = true

-- Loads a file if ity exists
--
function M.load(theme, config)
	notify.display(verbose, "Loading: [" .. theme .. "] " .. config)

	local found, result = pcall(require, theme .. "." .. config)
	if found then
		notify.display(verbose, "Loaded!")
	end
	return result
end

-- If the file does not exist in the theme,
-- look for an available default
--
function M.pick(theme, config)
	notify.display(verbose, "Picking: [" .. theme .. "] " .. config)

	local found, result = pcall(require, theme .. "." .. config)
	if not found then
		notify.display(verbose, "Looking for default...")
		local ok, default = pcall(require, "default" .. "." .. config)
		if not ok then
			notify.display(verbose, "NOT FOUND!")
		else
			result = default.get(theme)
			notify.display(verbose, "Picked Default!")
		end
	else
		notify.display(verbose, "Found!")
	end

	return result
end

return M
