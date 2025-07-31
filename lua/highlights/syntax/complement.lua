-- SYNTAX EXTRA HIGHLIGHTS
-- JUL 29, 2025

local comp = require("empty.profile.syntax.complement")
local mapper = require("util.mapper")

local M = {}
local infused = {}

local remap = function(theme)
	comp = mapper.pick(theme, "profile.syntax.complement")
end

local infuse = function()
	infused.PROFILE = {
		Conceal = comp.Conceal,
		Debug = comp.Debug,
		Error = comp.Error,
		Ignore = comp.Ignore,
		MatchParen = comp.MatchParen,
		SpecialKey = comp.SpecialKey,
		Title = comp.Title,
		Todo = comp.Todo,
		Underlined = comp.Underlined,
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
