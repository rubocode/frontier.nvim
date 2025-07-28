-- APPRENTICE TELESCOPE VIEW PROFILE
-- JUL 22, 2025

local canvas = require("theme.apprentice.archetype.canvas")
local text = require("theme.apprentice.archetype.text")
local uniq = require("theme.apprentice.archetype.unique")

local M = {
	Border = { fg = uniq.Accent },
	Prompt = { fg = uniq.Special },
	Selection = { fg = canvas.Normal, bg = uniq.Accent },
	SelectionCaret = { fg = text.Normal, bg = canvas.Darker },
	Special = { fg = uniq.Fixed },
	Title = { fg = uniq.Peculiar },
}

return M
