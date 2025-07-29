-- DEFAULT EDITOR MSG PROFILE
-- JUL 29, 2025

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
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
