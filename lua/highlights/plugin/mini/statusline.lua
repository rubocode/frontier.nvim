-- MINI.STATUSLINE HIGHLIGHTS
-- JUL 05, 2025

local mode = require("empty.archetype.mode")
local status = require("empty.archetype.status")

local mapper = require("util.mapper")

local M = {}
local infused = {}

M.URL = "https://github.com/echasnovski/mini.statusline"

local remap = function(theme)
	mode = mapper.pick(theme, "archetype.mode")
	status = mapper.pick(theme, "archetype.status")
end

local infuse = function()
	infused.PROFILE = {
		MiniStatuslineDevinfo = status.Normal,
		MiniStatuslineFileinfo = status.Normal,
		MiniStatuslineFilename = status.Loud,
		MiniStatuslineInactive = status.Quiet,
		MiniStatuslineModeCommand = mode.Command,
		MiniStatuslineModeInsert = mode.Insert,
		MiniStatuslineModeNormal = mode.Normal,
		MiniStatuslineModeOther = mode.Other,
		MiniStatuslineModeReplace = mode.Replace,
		MiniStatuslineModeVisual = mode.Visual,
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
