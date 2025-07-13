-- DIAGNOSTICS HIGHLIGHTS
-- JUL 03, 2025

local profile = require("meta.diagnostics.profile")

local M = {}
local infused = {}

local remap = function(theme)
	profile = require(theme .. ".meta.diagnostics.profile")
end

local infuse = function()
	infused.PROFILE = {
		ErrorMsg = profile.ErrorMsg,
		ModeMsg = profile.ModeMsg,
		MoreMsg = profile.MoreMsg,
		WarningMsg = profile.WarningMessage,
		DiagnosticError = profile.DiagnosticError,
		DiagnosticHint = profile.DiagnosticHint,
		DiagnosticInfo = profile.DiagnosticInfo,
		DiagnosticOk = profile.DiagnosticOk,
		DiagnosticWarn = profile.DiagnosticWarn,
		DiagnosticVirtualLinesError = profile.DiagnosticVirtualLinesError,
		DiagnosticVirtualLinesHint = profile.DiagnosticVirtualLinesHint,
		DiagnosticVirtualLinesInfo = profile.DiagnosticVirtualLinesInfo,
		DiagnosticVirtualLinesOk = profile.DiagnosticVirtualLinesOk,
		DiagnosticVirtualLinesWarn = profile.DiagnosticVirtualLinesWarn,
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
