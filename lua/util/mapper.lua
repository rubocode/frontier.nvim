-- MAPPER UTILITY
-- JUL 16, 2025

local notify = require("util.notify")
local cfg = require("util.config")

local M = {}

-- Loads a file if it exists
--
function M.load(theme, config)
	notify.warning("Looking for: " .. cfg.notice(theme, config))

	local result = nil

	local found, loaded = pcall(require, cfg.module(theme, config))
	if found then
		result = loaded
		notify.warning("Loaded! " .. cfg.notice(theme, config))
	else
		notify.warning("MISSING: " .. cfg.notice(theme, config))
	end

	return result
end

-- If the file does not exist in the theme,
-- look for an available default
--
function M.pick(theme, config)
	notify.warning("PICKING: " .. cfg.notice(theme, config))

	local result = nil

	local loaded = M.load(theme, config)
	if loaded then
		result = loaded
		notify.warning("CUSTOM: " .. cfg.notice(theme, config))
	else
		loaded = M.load("default", config)
		if loaded then
			result = loaded.get(theme)
			notify.warning("DEFAULT: " .. cfg.notice("default", config))
		else
			notify.error("NO CUSTOM OR DEFAULT: " .. cfg.notice(theme, config))
		end
	end

	return result
end

return M
