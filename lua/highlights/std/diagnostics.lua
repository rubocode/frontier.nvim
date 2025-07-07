-- NORMAL COLORS
-- JUL 03, 2025

local diag = require("profile.std.diagnostics")

local M = {}

M.PROFILE = {
	ErrorMsg = diag.Error,
	ModeMsg = diag.Info,
	MoreMsg = diag.Hint,
	WarningMsg = diag.Warn,
	DiagnosticError = diag.Error,
	DiagnosticHint = diag.Hint,
	DiagnosticInfo = diag.Info,
	DiagnosticOk = diag.Ok,
	DiagnosticWarn = diag.Warn,
	DiagnosticVirtualLinesError = diag.LspError,
	DiagnosticVirtualLinesHint = diag.LspHint,
	DiagnosticVirtualLinesInfo = diag.LspInfo,
	DiagnosticVirtualLinesOk = diag.LspOk,
	DiagnosticVirtualLinesWarn = diag.LspWarn,
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
