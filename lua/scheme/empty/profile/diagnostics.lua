-- DIAGNOSTICS COLOR ABSTRACTION
-- JUL 06, 2025

local M = {
	Error = {},
	Hint = {},
	Info = {},
	Ok = {},
	Warn = {},
	-- Allow for changing background and foreground
	-- for displaying LSP diagnostics in virtual lines.
	LspError = {},
	LspHint = {},
	LspInfo = {},
	LspOk = {},
	LspWarn = {},
}

return M
