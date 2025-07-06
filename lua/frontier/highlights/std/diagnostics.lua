-- NORMAL COLORS
-- JUL 03, 2025

local diag = require("frontier.theme.diagnostics")

local M = {}

M.CHANGES = {
	ErrorMsg = { diag.Error },
	ModeMsg = { diag.Info },
	MoreMsg = { diag.Hint },
	WarningMsg = { diag.Warn },
	DiagnosticError = { diag.Error },
	DiagnosticHint = { diag.Hint },
	DiagnosticInfo = { diag.Info },
	DiagnosticOk = { diag.Ok },
	DiagnosticWarn = { diag.Warn },
	DiagnosticVirtualLinesError = { fg = diag.LspErrorFg, bg = diag.LspErrorBg },
	DiagnosticVirtualLinesHint = { fg = diag.LspHintFg, bg = diag.LspHintBg },
	DiagnosticVirtualLinesInfo = { fg = diag.LspInfoFg, bg = diag.LspInfoBg },
	DiagnosticVirtualLinesOk = { fg = diag.LspOkFg, bg = diag.LspInfoBg },
	DiagnosticVirtualLinesWarn = { fg = diag.LspWarnFg, bg = diag.LspWarnBg },
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
