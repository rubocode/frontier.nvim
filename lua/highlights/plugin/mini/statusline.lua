-- MINI.STATUSLINE HIGHLIGHTS
-- JUL 05, 2025

local mode = require("empty.shared.mode")
local segment = require("empty.shared.segment")

local M = {}
local infused = {}

M.URL = "https://github.com/echasnovski/mini.statusline"

local remap = function(theme)
	mode = require(theme .. ".shared.mode")
	segment = require(theme .. ".shared.segment")
end

local infuse = function()
	infused.PROFILE = {
		MiniStatuslineDevinfo = segment.Standard,
		MiniStatuslineFileinfo = segment.Standard,
		MiniStatuslineFilename = segment.Prominent,
		MiniStatuslineInactive = segment.Inactive,
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
