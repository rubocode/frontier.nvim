-- DEFAULT SYNTAX EXTRA PROFILE
-- JUL 29, 2025

local canvas = require("empty.archetype.canvas")
local diag = require("empty.archetype.diagnostics")
local text = require("empty.archetype.text")
local uniq = require("empty.archetype.unique")
local style = require("highlights.style")

local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	canvas = mapper.pick(theme, "archetype.canvas")
	diag = mapper.pick(theme, "archetype.diagnostics")
	text = mapper.pick(theme, "archetype.text")
	uniq = mapper.pick(theme, "archetype.unique")
end

local infuse = function()
	profile = {
		Conceal = { fg = text.Normal },
		Debug = {},
		Error = diag.Text.Error,
		Ignore = {},
		MatchParen = { fg = uniq.Distinct, bg = canvas.Normal, style = style.Bold },
		SpecialKey = { fg = text.Quiet },
		Title = { fg = uniq.Peculiar, style = style.Bold },
		Todo = { fg = canvas.Normal, bg = uniq.Striking },
		Underlined = { fg = uniq.Prominent, style = style.Underline },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
