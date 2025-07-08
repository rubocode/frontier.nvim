-- DIAGNOSTICS COLOR ABSTRACTION
-- JUL 06, 2025

local status = require("theme.status")

local M = {
	Error = status.Text.Error,
	Hint = status.Text.Hint,
	Info = status.Text.Info,
	Ok = status.Text.Ok,
	Warn = status.Text.Warn,
	LspError = status.Line.Error,
	LspHint = status.Line.Hint,
	LspInfo = status.Line.Info,
	LspOk = status.Line.Ok,
	LspWarn = status.Line.Warn,
}

return M
