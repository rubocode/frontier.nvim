-- DIAGNOSTICS HIGHLIGHTS
-- JUL 03, 2025

local line = require("meta.diagnostics.line")
local text = require("meta.diagnostics.text")

local M = {}
local infused = {}

local remap = function(theme)
	line = require(theme .. ".meta.diagnostics.line")
	text = require(theme .. ".meta.diagnostics.text")
end

local infuse = function()
	infused.PROFILE = {
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
	infused.LINKS = {
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
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
