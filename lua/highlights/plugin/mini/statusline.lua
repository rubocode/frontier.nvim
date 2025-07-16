-- MINI.STATUSLINE HIGHLIGHTS
-- JUL 05, 2025

local line = require("empty.support.mode.line")
local status = require("empty.support.status")
local mapper = require("util.mapper")

local M = {}
local infused = {}

M.URL = "https://github.com/echasnovski/mini.statusline"

local remap = function(theme)
	line = mapper.pick(theme, "support.mode.line")
	status = mapper.pick(theme, "support.status")
end

local infuse = function()
	infused.PROFILE = {
		MiniStatuslineDevinfo = status.Normal,
		MiniStatuslineFileinfo = status.Normal,
		MiniStatuslineFilename = status.Loud,
		MiniStatuslineInactive = status.Quiet,
		MiniStatuslineModeCommand = line.Command,
		MiniStatuslineModeInsert = line.Insert,
		MiniStatuslineModeNormal = line.Normal,
		MiniStatuslineModeOther = line.Other,
		MiniStatuslineModeReplace = line.Replace,
		MiniStatuslineModeVisual = line.Visual,
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
