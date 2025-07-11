-- MODE THEME COLORS
-- JUL 08, 2025

local blue = require("scheme.frontier.colors.blue")
local green = require("scheme.frontier.colors.green")
local grey = require("scheme.frontier.colors.grey")
local red = require("scheme.frontier.colors.red")
local style = require("highlights.style")

local bg = require("scheme.frontier.theme.meta.background")

local M = {
	Text = {
		Command = { fg = red.Dark },
		Insert = { fg = green.Normal },
		Normal = { fg = grey.Black },
		Other = { fg = grey.Dark },
		Replace = { fg = red.Normal },
		Visual = { fg = blue.Normal },
	},
	Line = {
		Command = { fg = grey.Loud, bg = red.Dark, style = style.Bold },
		Insert = { fg = bg.Normal, bg = green.Normal, style = style.Bold },
		Normal = { fg = grey.Lighter, bg = grey.Black, style = style.Bold },
		Other = { fg = grey.Black, bg = grey.Dark, style = style.Bold },
		Replace = { fg = grey.Loud, bg = red.Normal, style = style.Bold },
		Visual = { fg = bg.Normal, bg = blue.Normal, style = style.Bold },
	},
}

return M
