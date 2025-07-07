-- MINI.STATUSLINE HIGHLIGHTS
-- JUL 05, 2025

local line = require("profile.plugin.mini.statusline")

local M = {}

M.PROFILE = {
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

M.LINKS = {}

return M
