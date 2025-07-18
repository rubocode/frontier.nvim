-- CONFIG UTILITY
-- JUL 18, 2025

local M = {}

function M.module(theme, config)
	local module = nil
	if theme == "default" then
		module = "default." .. config
	else
		module = "theme." .. theme .. "." .. config
	end
	return module
end

function M.notice(theme, config)
	local notice = "[" .. theme .. "] " .. config
	return notice
end

return M
