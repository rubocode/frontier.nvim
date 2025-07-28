-- DEFAULT TELESCOPE VIEW PROFILE
-- JUL 22, 2025

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
		Border = { fg = uniq.Accent },
		Prompt = { fg = uniq.Special },
		Selection = { fg = text.Normal, bg = canvas.Normal, style = style.Reverse },
		SelectionCaret = { fg = text.Normal, bg = canvas.Darker },
		Special = { fg = uniq.Fixed },
		Title = { fg = uniq.Peculiar },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
