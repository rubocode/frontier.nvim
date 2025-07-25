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
		-- JUL 25, 2025
		-- The follwoing are defaulted to be linked to
		-- standard highlights such as Cursor, DiffAdd
		-- and DiffChange in _mini.statusline_.
		-- These choices may be better in that they reflect
		-- the usual expectations.
		-- The approach here is to allow the custom theme
		-- to skip defining the mode.Line elements
		-- by commenting out those items in the
		-- [theme].archtype.mode file.
		-- This will allow you to go with _Chasnivski's_
		-- carefully chosen defaults.
		-- It is a trade-off (general expectations
		-- versus measured personal choices.
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
