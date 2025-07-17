-- CONFIG UTILITY
-- JUL 18, 2025

local M = {}

function M.module(theme, config)
	local module = theme .. "." .. config
	return module
end

function M.notice(theme, config)
	local notice = "[" .. theme .. "] " .. config
	return notice
end

return M
