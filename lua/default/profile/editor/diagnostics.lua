-- DEFAULT EDITOR DIAGNOSTICS PROFILE
-- JUL 18, 2025

local diag = require("empty.archetype.diagnostics")

local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	diag = mapper.pick(theme, "archetype.diagnostics")
end

-- NOTE:
-- JUL 26, 2025
-- It appears that LazyVim is using DiagnosticVirtualText
-- instead of DisgnosticFloating* in the dashboard.
-- This results in the LazyVim dashboard progress messages
-- to have a background color when DisgnosticVirtualText*
-- have background colors.
-- Ideally, we would have been better off if the LazyVim
-- dashboard used the DiagnosticFloating* exclusively.
-- Our priority is support for the programmmer in editing.
-- Therefore, in themes where it makes sense to have
-- DiagnosticVirtualText* to have background colors,
-- we should give second priority to the progress messages
-- in the LazyVim dashboard and give first priority
-- to the LSP messages.
--

local infuse = function()
	profile = {
		ErrorMsg = diag.Text.Error,
		ModeMsg = diag.Text.Info,
		MoreMsg = diag.Text.Hint,
		WarningMsg = diag.Text.Warn,
		DiagnosticError = diag.Line.Error,
		DiagnosticHint = diag.Line.Hint,
		DiagnosticInfo = diag.Line.Info,
		DiagnosticOk = diag.Line.Ok,
		DiagnosticWarn = diag.Line.Warn,
		DiagnosticFloatingError = diag.Text.Error,
		DiagnosticFloatingHint = diag.Text.Hint,
		DiagnosticFloatingInfo = diag.Text.Info,
		DiagnosticFloatingOk = diag.Text.Ok,
		DiagnosticFloatingWarn = diag.Text.Warn,
		DiagnosticVirtualLinesError = diag.Line.Error,
		DiagnosticVirtualLinesHint = diag.Line.Hint,
		DiagnosticVirtualLinesInfo = diag.Line.Info,
		DiagnosticVirtualLinesOk = diag.Line.Ok,
		DiagnosticVirtualLinesWarn = diag.Line.Warn,
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
