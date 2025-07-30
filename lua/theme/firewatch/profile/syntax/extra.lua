-- FIREWATCH SYNTAX EXTRA PROFILE
-- JUL 29, 2025

local canvas = require("theme.firewatch.archetype.canvas")
local diag = require("theme.firewatch.archetype.diagnostics")
local text = require("theme.firewatch.archetype.text")
local style = require("highlights.style")

local duo = require("theme.firewatch.palette.duo")
local syntax = require("theme.firewatch.palette.syntax")

local M = {
	Conceal = { fg = text.Normal },
	Debug = {},
	Error = diag.Text.Error,
	Ignore = {},
	MatchParen = { fg = duo.Duo1, bg = canvas.Normal, style = style.Bold },
	SpecialKey = { fg = syntax.FoldBg },
	Title = { fg = duo.Duo2, style = style.Bold },
	Todo = {},
	Underlined = { fg = duo.Duo1, style = style.Underline },
}

return M
