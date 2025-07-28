-- DEFAULT SYNTAX TREESITTER COMMENT PROFILE
-- JUL 28, 2025

local diag = require("empty.archetype.diagnostics")

local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	diag = mapper.pick(theme, "archetype.diagnostics")
end

local infuse = function()
	profile = {
		atCommentError = diag.Text.Error,
		atCommentWarning = diag.Text.Warn,
		atCommentNote = diag.Text.Info,
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
