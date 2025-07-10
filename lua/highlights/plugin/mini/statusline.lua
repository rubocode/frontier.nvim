-- MINI.STATUSLINE HIGHLIGHTS
-- JUL 05, 2025

local display = require("empty.std.display")
local mode = require("empty.std.mode")

local M = {}
local infused = {}

M.URL = "https://github.com/echasnovski/mini.statusline"

local remap = function(scheme)
	display = require("scheme." .. scheme .. ".theme.std.display")
	mode = require("scheme." .. scheme .. ".theme.std.mode")
end

local infuse = function()
	infused.PROFILE = {
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
	infused.LINKS = {}
end

function M.get(scheme)
	remap(scheme)
	infuse()
	return infused
end

return M
