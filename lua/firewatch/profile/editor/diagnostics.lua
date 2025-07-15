-- FIREWATCH EDITIR DIAGNOSTICS PROFILE
-- JUL 13, 2025

-- We use LINE type DIAGNOSTICS in the middle for
-- a better LSP experience because FIREWATCH is
-- a very dark theme and the usual diagndstics messages
-- do not have enough contrast against the backdrop.
--
local line = require("std.diagnostics.line")
local text = require("std.diagnostics.text")

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
