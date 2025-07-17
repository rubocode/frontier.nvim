-- MAPPER UTILITY
-- JUL 16, 2025

local notify = require("util.notify")

local M = {}

local config_module = function(theme, config)
	local mod = theme .. "." .. config
	return mod
end

local config_display = function(theme, config)
	local display = "[" .. theme .. "] " .. config
	return display
end

-- Loads a file if it exists
--
function M.load(theme, config)
	local display = config_display(theme, config)
	local mod = config_module(theme, config)
	local result = nil

	notify.info("Looking for: " .. display)

	local found, loaded = pcall(require, mod)
	if found then
		notify.info("Loaded! " .. display)
		result = loaded
	else
		notify.warning("NOT FOUND! " .. display)
	end

	return result
end

-- If the file does not exist in the theme,
-- look for an available default
--
function M.pick(theme, config)
	local display = config_display(theme, config)
	notify.info("PICKING: " .. display)

	local loaded = M.load(theme, config)
	if not loaded then
		loaded = M.load("default", config)
		if loaded then
			notify.info("Picked Default!")
		else
			notify.error("NO CUSTOM OR DEFAULT: " .. display)
		end
	end

	return loaded
end

return M
