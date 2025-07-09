-- DIAGNOSTICS HIGHLIGHTS
-- JUL 03, 2025

local diag = require("theme.std.diagnostics")

local M = {}

M.PROFILE = {
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

M.LINKS = {
	DiagnosticFloatingError = { link = "DiagnosticError" },
	DiagnosticFloatingHint = { link = "DiagnosticHint" },
	DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
	DiagnosticFloatingOk = { link = "DiagnosticOk" },
	DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
	DiagnosticSignError = { link = "DiagnosticError" },
	DiagnosticSignHint = { link = "DiagnosticHint" },
	DiagnosticSignInfo = { link = "DiagnosticInfo" },
	DiagnosticSignOk = { link = "DiagnosticOk" },
	DiagnosticSignWarn = { link = "DiagnosticWarn" },
	DiagnosticVirtualTextError = { link = "DiagnosticError" },
	DiagnosticVirtualTextHint = { link = "DiagnosticHint" },
	DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
	DiagnosticVirtualTextOk = { link = "DiagnosticOk" },
	DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
}

return M
