-- MINI.STATUSLINE HIGHLIGHTS
-- JUL 05, 2025

local mode = require("std.mode")
local status = require("std.status")

local M = {}
local infused = {}

M.URL = "https://github.com/echasnovski/mini.statusline"

local remap = function(theme)
	mode = require(theme .. ".custom.mode")
	status = require(theme .. ".custom.status")
end

local infuse = function()
	infused.PROFILE = {
		MiniStatuslineDevinfo = status.Normal,
		MiniStatuslineFileinfo = status.Normal,
		MiniStatuslineFilename = status.Loud,
		MiniStatuslineInactive = status.Quiet,
		MiniStatuslineModeCommand = mode.Line.Command,
		MiniStatuslineModeInsert = mode.Line.Insert,
		MiniStatuslineModeNormal = mode.Line.Normal,
		MiniStatuslineModeOther = mode.Line.Other,
		MiniStatuslineModeReplace = mode.Line.Replace,
		MiniStatuslineModeVisual = mode.Line.Visual,
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
