-- EDITOR SEARCH HIGHLIGHTS
-- JUL 06, 2025

local search = require("empty.profile.editor.search")
local mapper = require("util.mapper")

local M = {}
local infused = {}

local remap = function(theme)
	search = mapper.pick(theme, "profile.editor.search")
end

local infuse = function()
	infused.PROFILE = {
		IncSearch = search.IncSearch,
		Search = search.Search,
	}
	infused.LINKS = {
		QuickFixLine = { link = "Search" },
		CurSearch = { link = "IncSearch" },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
