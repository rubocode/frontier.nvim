-- STATUSLINE COLOR ABSTRACTION
-- JUL 06, 2025

local display = require("theme.display")
local mode = require("theme.mode")

local M = {
	Devinfo = display.Standard,
	Fileinfo = display.Standard,
	Filename = display.Prominent,
	Inactive = display.Inactive,
	ModeCommand = mode.Line.Command,
	ModeInsert = mode.Line.Insert,
	ModeNormal = mode.Line.Normal,
	ModeOther = mode.Line.Other,
	ModeReplace = mode.Line.Replace,
	ModeVisual = mode.Line.Visual,
}

return M
