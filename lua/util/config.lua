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

function M.display(theme, config)
	local display = "[" .. theme .. "] " .. config
	return display
end

return M
