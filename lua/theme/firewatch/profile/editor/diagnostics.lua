-- FIREWATCH EDITIR DIAGNOSTICS PROFILE
-- JUL 13, 2025

-- We use LINE type DIAGNOSTICS in the middle for
-- a better LSP experience because FIREWATCH is
-- a very dark theme and the usual diagndstics messages
-- do not have enough contrast against the backdrop.
--
local diag = require("theme.firewatch.archetype.diagnostics")

local M = {
	ErrorMsg = diag.text.Error,
	ModeMsg = diag.text.Info,
	MoreMsg = diag.text.Hint,
	WarningMsg = diag.text.Warn,
	DiagnosticError = diag.line.Error,
	DiagnosticHint = diag.line.Hint,
	DiagnosticInfo = diag.line.Info,
	DiagnosticOk = diag.line.Ok,
	DiagnosticWarn = diag.line.Warn,
	DiagnosticVirtualLinesError = diag.line.Error,
	DiagnosticVirtualLinesHint = diag.line.Hint,
	DiagnosticVirtualLinesInfo = diag.line.Info,
	DiagnosticVirtualLinesOk = diag.line.Ok,
	DiagnosticVirtualLinesWarn = diag.line.Warn,
}

return M
