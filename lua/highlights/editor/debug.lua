-- EDITOR DEBUG HIGHLIGHTS
-- JUL 29, 2025

local debug = require("empty.profile.editor.debug")

local mapper = require("util.mapper")

local M = {}
local infused = {}

local remap = function(theme)
	debug = mapper.pick(theme, "profile.editor.debug")
end

local infuse = function()
	infused.PROFILE = {
		debugBreakpoint = debug.debugBreakpoint,
		debugPC = debug.debugPC,
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
