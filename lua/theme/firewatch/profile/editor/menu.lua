-- FIREWATCH EDITOR MENU PROFILE
-- JUL 28, 2025

local canvas = require("theme.firewatch.archetype.canvas")
local text = require("theme.firewatch.archetype.text")
local uniq = require("theme.firewatch.archetype.unique")

local style = require("highlights.style")

local M = {
	Pmenu = { fg = canvas.Normal, bg = text.Quiet },
	PmenuSbar = { bg = text.Quiet },
	PmenuSel = { fg = canvas.Normal, bg = uniq.Dynamic, style = style.Bold },
	PmenuThumb = { fg = uniq.Dynamic, bg = uniq.Dynamic },
	WildMenu = { fg = text.Darker, bg = uniq.Accent },
}

return M
