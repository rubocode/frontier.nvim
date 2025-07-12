-- MINI.STATUSLINE HIGHLIGHTS
-- JUL 05, 2025

local mode = require("empty.mixin.mode")
local segment = require("empty.mixin.segment")

local M = {}
local infused = {}

M.URL = "https://github.com/echasnovski/mini.statusline"

local remap = function(scheme)
	mode = require("scheme." .. scheme .. ".theme.mixin.mode")
	segment = require("scheme." .. scheme .. ".theme.mixin.segment")
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

function M.get(scheme)
	remap(scheme)
	infuse()
	return infused
end

return M
