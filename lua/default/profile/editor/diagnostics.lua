-- DEFAULT EDITOR DIAGNOSTICS PROFILE
-- JUL 18, 2025

local line = require("default.support.diagnostics.line")
local text = require("default.support.diagnostics.text")
local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	line = mapper.pick(theme, "support.diagnostics.line")
	text = mapper.pick(theme, "support.diagnostics.text")
end

local infuse = function()
	profile = {
		ErrorMsg = text.Error,
		ModeMsg = text.Info,
		MoreMsg = text.Hint,
		WarningMsg = text.Warn,
		DiagnosticError = text.Error,
		DiagnosticHint = text.Hint,
		DiagnosticInfo = text.Info,
		DiagnosticOk = text.Ok,
		DiagnosticWarn = text.Warn,
		DiagnosticVirtualLinesError = line.Error,
		DiagnosticVirtualLinesHint = line.Hint,
		DiagnosticVirtualLinesInfo = line.Info,
		DiagnosticVirtualLinesOk = line.Ok,
		DiagnosticVirtualLinesWarn = line.Warn,
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
