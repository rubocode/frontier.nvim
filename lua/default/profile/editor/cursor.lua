-- DEFAULT EDITOR CURSOR PROFILE
-- JUL 15, 2025

local bg = require("empty.map.background")
local fg = require("empty.map.foreground")
local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	bg = mapper.pick(theme, "map.background")
	fg = mapper.pick(theme, "map.foreground")
end

local infuse = function()
	profile = {
		Cursor = { fg = bg.Darkest, bg = fg.Accent },
		CursorColumn = { bg = bg.Lighter },
		CursorLine = { bg = bg.Peculiar },
		CursorLineNr = { fg = fg.Peculiar },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
