-- FIREWATCH STATUS ARCHETYPE
-- JUL 25, 2025

local text = require("theme.firewatch.archetype.text")
local uniq = require("theme.firewatch.archetype.unique")
local canvas = require("theme.firewatch.archetype.canvas")

local M = {
	Loud = { fg = text.Lighter, bg = text.Quiet },
	Normal = { fg = canvas.Lighter, bg = uniq.Dynamic },
	Quiet = { fg = text.Quiet, bg = canvas.Lighter },
}

return M
