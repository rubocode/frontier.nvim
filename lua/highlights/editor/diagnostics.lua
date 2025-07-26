-- EDITOR DIAGNOSTICS HIGHLIGHTS
-- JUL 03, 2025

local diag = require("empty.profile.editor.diagnostics")
local mapper = require("util.mapper")

local M = {}
local infused = {}

local remap = function(theme)
	diag = mapper.pick(theme, "profile.editor.diagnostics")
end

local infuse = function()
	infused.PROFILE = {
		ErrorMsg = diag.ErrorMsg,
		ModeMsg = diag.ModeMsg,
		MoreMsg = diag.MoreMsg,
		WarningMsg = diag.WarningMsg,
		DiagnosticError = diag.DiagnosticError,
		DiagnosticHint = diag.DiagnosticHint,
		DiagnosticInfo = diag.DiagnosticInfo,
		DiagnosticOk = diag.DiagnosticOk,
		DiagnosticWarn = diag.DiagnosticWarn,
		DiagnosticFloatingError = diag.DiagnosticFloatingError,
		DiagnosticFloatingHint = diag.DiagnosticFloatingHint,
		DiagnosticFloatingInfo = diag.DiagnosticFloatingInfo,
		DiagnosticFloatingOk = diag.DiagnosticFloatingOK,
		DiagnosticFloatingWarn = diag.DiagnosticFloatingWarn,
		DiagnosticVirtualLinesError = diag.DiagnosticVirtualLinesError,
		DiagnosticVirtualLinesHint = diag.DiagnosticVirtualLinesHint,
		DiagnosticVirtualLinesInfo = diag.DiagnosticVirtualLinesInfo,
		DiagnosticVirtualLinesOk = diag.DiagnosticVirtualLinesOk,
		DiagnosticVirtualLinesWarn = diag.DiagnosticVirtualLinesWarn,
	}
	infused.LINKS = {
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
