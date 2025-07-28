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
		DiagnosticVirtualTextError = diag.DiagnosticVirtualTextError,
		DiagnosticVirtualTextHint = diag.DiagnosticVirtualTextHint,
		DiagnosticVirtualTextInfo = diag.DiagnosticVirtualTextInfo,
		DiagnosticVirtualTextOk = diag.DiagnosticVirtualTextOk,
		DiagnosticVirtualTextWarn = diag.DiagnosticVirtualTextWarn,
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
		DiagnosticVirtualLinesError = { link = "DiagnosticVirtualTextError" },
		DiagnosticVirtualLinesHint = { link = "DiagnosticVirtualTextHint" },
		DiagnosticVirtualLinesInfo = { link = "DiagnosticVirtualTextInfo" },
		DiagnosticVirtualLinesOk = { link = "DiagnosticVirtualTextOk" },
		DiagnosticVirtualLinesWarn = { link = "DiagnosticVirtualTextWarn" },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
