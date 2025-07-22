-- DEFAULT EDITOR DIAGNOSTICS PROFILE
-- JUL 18, 2025

local diag = require("empty.map.diagnostics")
local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	diag = mapper.pick(theme, "map.diagnostics")
end

local infuse = function()
	profile = {
		ErrorMsg = { fg = diag.Text.Error },
		ModeMsg = { fg = diag.Text.Info },
		MoreMsg = { fg = diag.Text.Hint },
		WarningMsg = { fg = diag.Text.Warn },
		DiagnosticError = { fg = diag.Text.Error },
		DiagnosticHint = { fg = diag.Text.Hint },
		DiagnosticInfo = { fg = diag.Text.Info },
		DiagnosticOk = { fg = diag.Text.Ok },
		DiagnosticWarn = { fg = diag.Text.Warn },
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
