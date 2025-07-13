-- META DISGNOSTICS PROFILE
-- JUL 13, 2025

local line = require("meta.diagnostics.line")
local text = require("meta.diagnostics.text")

local M = {
	ErrorMsg = text.Error,
	ModeMsg = text.Info,
	MoreMsg = text.Hint,
	WarningMsg = text.Warn,
	DiagnosticError = line.Error,
	DiagnosticHint = line.Hint,
	DiagnosticInfo = line.Info,
	DiagnosticOk = line.Ok,
	DiagnosticWarn = line.Warn,
	DiagnosticVirtualLinesError = line.Error,
	DiagnosticVirtualLinesHint = line.Hint,
	DiagnosticVirtualLinesInfo = line.Info,
	DiagnosticVirtualLinesOk = line.Ok,
	DiagnosticVirtualLinesWarn = line.Warn,
}

return M
