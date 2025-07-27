-- APPRENTICE MODE ARCHETYPE
-- JUL 27, 2025

local text = require("theme.apprentice.archetype.text")
local canvas = require("theme.apprentice.archetype.canvas")
local std = require("theme.apprentice.palette.std")

local style = require("highlights.style")

local M = {
	Text = {
		Command = { fg = std.Red },
		Insert = { fg = std.Green },
		Normal = { fg = text.Darker },
		Other = { fg = std.Ocre },
		Replace = { fg = std.Purple },
		Visual = { fg = std.Blue },
	},
	Line = {
		Command = { fg = text.Lighter, bg = std.Red, style = style.Bold },
		Insert = { fg = text.Lighter, bg = std.Green, style = style.Bold },
		Normal = { fg = text.Lighter, bg = canvas.Darker, style = style.Bold },
		Other = { fg = text.Lighter, bg = std.Ocre, style = style.Bold },
		Replace = { fg = text.Lighter, bg = std.Purple, style = style.Bold },
		Visual = { fg = text.Lighter, bg = std.Blue, style = style.Bold },
	},
}

return M
