-- DEFAULT EDITOR DIAGNOSTICS PROFILE
-- JUL 18, 2025

local diag = require("empty.map.diagnostics")

local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	diag = mapper.pick(theme, "map.diagnostics")
end

local infuse = function()
	profile = {
		ErrorMsg = diag.Text.Error,
		ModeMsg = diag.Text.Info,
		MoreMsg = diag.Text.Hint,
		WarningMsg = diag.Text.Warn,
		DiagnosticError = diag.Text.Error,
		DiagnosticHint = diag.Text.Hint,
		DiagnosticInfo = diag.Text.Info,
		DiagnosticOk = diag.Text.Ok,
		DiagnosticWarn = diag.Text.Warn,
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
