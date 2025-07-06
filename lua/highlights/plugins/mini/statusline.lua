-- MINI.STATUSLINE HIGHLIGHTS
-- JUL 05, 2025

local line = require("scheme.empty.profile.statusline")

local M = {}
local result = {}

local initialize = function()
	result.CHANGES = {
		MiniStatuslineModeNormal = line.ModeNormal,
		MiniStatuslineModeInsert = line.ModeInsert,
		MiniStatuslineModeVisual = line.ModeVisual,
		MiniStatuslineModeReplace = line.ModeReplace,
		MiniStatuslineModeCommand = line.ModeCommand,
		MiniStatuslineModeOther = line.ModeOther,
		-- Highlight used in default statusline
		MiniStatuslineDevinfo = line.Devinfo,
		--   (|MiniStatusline.section_git| and |MiniStatusline.section_diagnostics|)
		MiniStatuslineFilename = line.Filename,
		MiniStatuslineFileinfo = line.Fileinfo,
		-- Other groups,
		MiniStatuslineInactive = line.Inactive,
	}

	result.LINKS = {}
end

function M.get(name)
	line = require("scheme." .. name .. ".profile.statusline")
	initialize()
	return result
end

return M
