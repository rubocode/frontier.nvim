-- SYNTAX EXTRA HIGHLIGHTS
-- JUL 29, 2025

local extra = require("empty.profile.syntax.extra")
local mapper = require("util.mapper")

local M = {}
local infused = {}

local remap = function(theme)
	extra = mapper.pick(theme, "profile.syntax.extra")
end

local infuse = function()
	infused.PROFILE = {
		Conceal = extra.Conceal,
		Debug = extra.Debug,
		Error = extra.Error,
		Ignore = extra.Ignore,
		MatchParen = extra.MatchParen,
		SpecialKey = extra.SpecialKey,
		Title = extra.Title,
		Todo = extra.Todo,
		Underlined = extra.Underlined,
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
