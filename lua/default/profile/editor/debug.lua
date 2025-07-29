-- DEFAULT EDITOR DEBUG PROFILE
-- JUL 09, 2025

local diag = require("empty.archetype.diagnostics")

local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	diag = mapper.pick(theme, "archetype.diagnostics")
end

local infuse = function()
	profile = {
		debugBreakPoint = diag.Text.Error,
		debugPC = diag.Text.Hint,
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
