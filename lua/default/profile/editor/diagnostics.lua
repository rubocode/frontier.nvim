-- DEFAULT EDITOR DIAGNOSTICS PROFILE
-- JUL 18, 2025

local diag = require("empty.archetype.diagnostics")

local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	diag = mapper.pick(theme, "archetype.diagnostics")
end

local infuse = function()
	profile = {
		ErrorMsg = diag.Text.Error,
		ModeMsg = diag.Text.Info,
		MoreMsg = diag.Text.Hint,
		WarningMsg = diag.Text.Warn,
		DiagnosticError = diag.Line.Error,
		DiagnosticHint = diag.Line.Hint,
		DiagnosticInfo = diag.Line.Info,
		DiagnosticOk = diag.Line.Ok,
		DiagnosticWarn = diag.Line.Warn,
		DiagnosticVirtualLinesError = diag.Line.Error,
		DiagnosticVirtualLinesHint = diag.Line.Hint,
		DiagnosticVirtualLinesInfo = diag.Line.Info,
		DiagnosticVirtualLinesOk = diag.Line.Ok,
		DiagnosticVirtualLinesWarn = diag.Line.Warn,
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
