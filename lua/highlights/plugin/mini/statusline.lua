-- MINI.STATUSLINE HIGHLIGHTS
-- JUL 05, 2025

local display = require("theme.display")
local mode = require("theme.mode")

local M = {}

M.URL = "https://github.com/echasnovski/mini.statusline"

M.PROFILE = {
	MiniStatuslineDevinfo = display.Standard,
	MiniStatuslineFileinfo = display.Standard,
	MiniStatuslineFilename = display.Prominent,
	MiniStatuslineInactive = display.Inactive,
	MiniStatuslineModeCommand = mode.Line.Command,
	MiniStatuslineModeInsert = mode.Line.Insert,
	MiniStatuslineModeNormal = mode.Line.Normal,
	MiniStatuslineModeOther = mode.Line.Other,
	MiniStatuslineModeReplace = mode.Line.Replace,
	MiniStatuslineModeVisual = mode.Line.Visual,
}

M.LINKS = {}

return M
