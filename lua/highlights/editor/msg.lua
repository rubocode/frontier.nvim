-- EDITOR MSG HIGHLIGHTS
-- JUL 29, 2025

local msg = require("empty.profile.editor.msg")
local mapper = require("util.mapper")

local M = {}
local infused = {}

local remap = function(theme)
	msg = mapper.pick(theme, "profile.editor.msg")
end

local infuse = function()
	infused.PROFILE = {
		ErrorMsg = msg.ErrorMsg,
		ModeMsg = msg.ModeMsg,
		MoreMsg = msg.MoreMsg,
		WarningMsg = msg.WarningMsg,
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
