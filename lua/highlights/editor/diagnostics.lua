-- EDITOR DIAGNOSTICS HIGHLIGHTS
-- JUL 03, 2025

local diag = require("empty.profile.editor.diagnostics")

local M = {}
local infused = {}

local remap = function(theme)
	diag = require(theme .. ".profile.editor.diagnostics")
end

local infuse = function()
	infused.PROFILE = {
		ErrorMsg = diag.ErrorMsg,
		ModeMsg = diag.ModeMsg,
		MoreMsg = diag.MoreMsg,
		WarningMsg = diag.WarningMessage,
		DiagnosticError = diag.DiagnosticError,
		DiagnosticHint = diag.DiagnosticHint,
		DiagnosticInfo = diag.DiagnosticInfo,
		DiagnosticOk = diag.DiagnosticOk,
		DiagnosticWarn = diag.DiagnosticWarn,
		DiagnosticVirtualLinesError = diag.DiagnosticVirtualLinesError,
		DiagnosticVirtualLinesHint = diag.DiagnosticVirtualLinesHint,
		DiagnosticVirtualLinesInfo = diag.DiagnosticVirtualLinesInfo,
		DiagnosticVirtualLinesOk = diag.DiagnosticVirtualLinesOk,
		DiagnosticVirtualLinesWarn = diag.DiagnosticVirtualLinesWarn,
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
