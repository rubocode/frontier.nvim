-- MINI.STATUSLINE HIGHLIGHTS
-- JUL 05, 2025

local mode = require("meta.mode")
local status = require("meta.status")

local M = {}
local infused = {}

M.URL = "https://github.com/echasnovski/mini.statusline"

local remap = function(theme)
	mode = require(theme .. ".meta.mode")
	status = require(theme .. ".meta.status")
end

local infuse = function()
	infused.PROFILE = {
		MiniStatuslineDevinfo = status.Standard,
		MiniStatuslineFileinfo = status.Standard,
		MiniStatuslineFilename = status.Prominent,
		MiniStatuslineInactive = status.Inactive,
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
