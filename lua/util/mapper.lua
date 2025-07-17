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
	notify.info("Looking for: " .. display)

	local result = nil

	local found, loaded = pcall(require, mod)
	if found then
		result = loaded
		notify.info("Loaded! " .. display)
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

	local result = nil

	local loaded = M.load(theme, config)
	if loaded then
		result = loaded
		notify.info("CUSTOM: " .. display)
	else
		loaded = M.load("default", config)
		if loaded then
			result = loaded.get(theme)
			notify.info("DEFAULT: " .. config_display("default", config))
		else
			notify.error("NO CUSTOM OR DEFAULT: " .. display)
		end
	end

	return result
end

return M
