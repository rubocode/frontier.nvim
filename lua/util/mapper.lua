-- MAPPER UTILITY
-- JUL 16, 2025

local notify = require("util.notify")
local cfg = require("util.config")

local M = {}

-- Loads a file if it exists
--
function M.load(theme, config)
	local display = cfg.notice(theme, config)
	local mod = cfg.module(theme, config)
	notify.warning("Looking for: " .. display)

	local result = nil

	local found, loaded = pcall(require, mod)
	if found then
		result = loaded
		notify.warning("Loaded! " .. display)
	else
		notify.warning("NOT FOUND! " .. display)
	end

	return result
end

-- If the file does not exist in the theme,
-- look for an available default
--
function M.pick(theme, config)
	local display = cfg.notice(theme, config)
	notify.warning("PICKING: " .. display)

	local result = nil

	local loaded = M.load(theme, config)
	if loaded then
		result = loaded
		notify.warning("CUSTOM: " .. display)
	else
		loaded = M.load("default", config)
		if loaded then
			result = loaded.get(theme)
			notify.warning("DEFAULT: " .. cfg.notice("default", config))
		else
			notify.error("NO CUSTOM OR DEFAULT: " .. display)
		end
	end

	return result
end

return M
