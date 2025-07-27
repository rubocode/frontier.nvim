-- FIREWATCH STATUS ARCHETYPE
-- JUL 25, 2025

local text = require("theme.firewatch.archetype.text")
local uniq = require("theme.firewatch.archetype.unique")
local canvas = require("theme.firewatch.archetype.canvas")

local M = {
	Loud = { fg = canvas.Normal, bg = text.Quiet },
	Normal = { fg = canvas.Normal, bg = uniq.Dynamic },
	Quiet = { fg = text.Quiet, bg = canvas.Normal },
}

return M
