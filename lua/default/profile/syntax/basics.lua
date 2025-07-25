-- DEFAULT SYNTAX BASICS PROFILE
-- JUL 25, 2025

local canvas = require("empty.archetype.canvas")
local text = require("empty.archetype.text")
local uniq = require("empty.archetype.unique")

local style = require("highlights.style")

local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	canvas = mapper.pick(theme, "archetype.canvas")
	text = mapper.pick(theme, "archetype.text")
	uniq = mapper.pick(theme, "archetype.unique")
end

local infuse = function()
	profile = {
		Comment = { fg = text.Quiet },
		Constant = { fg = uniq.Fixed },
		Debug = {},
		Delimiter = { fg = text.Darker },
		Function = { fg = uniq.Dynamic },
		Identifier = { fg = uniq.Dynamic },
		Keyword = { fg = text.Lighter },
		Label = {},
		Operator = { fg = text.Lighter },
		PreProc = { fg = uniq.Peculiar },
		Special = { fg = uniq.Special },
		Statement = { fg = text.Lighter },
		StorageClass = { fg = text.Lighter },
		String = { fg = uniq.Prominent },
		Tag = { fg = text.Lighter },
		Title = { fg = uniq.Distinct },
		Todo = { fg = canvas.Normal, bg = uniq.Striking },
		Type = { fg = uniq.Striking },
		Underlined = { style = style.Underlined },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
