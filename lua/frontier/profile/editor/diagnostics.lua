-- FRONTIER EDITOR DIAGNOSTICS PROFILE
-- JUL 15, 2025

local line = require("frontier.support.diagnostics.line")
local text = require("frontier.support.diagnostics.text")

local M = {
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

return M
