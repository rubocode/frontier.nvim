-- MODE THEME COLORS
-- JUL 08, 2025

local blue = require("scheme.frontier.colors.blue")
local green = require("scheme.frontier.colors.green")
local grey = require("scheme.frontier.colors.grey")
local red = require("scheme.frontier.colors.red")
local yellow = require("scheme.frontier.colors.yellow")
local style = require("highlights.style")

local M = {
	Text = {
		Command = { fg = red.Darker },
		Insert = { fg = green.Normal },
		Normal = { fg = grey.Darker },
		Other = { fg = yellow.Darker },
		Replace = { fg = red.Normal },
		Visual = { fg = blue.Normal },
	},
	Line = {
		Command = { fg = grey.Loud, bg = red.Darker, style = style.Bold },
		Insert = { fg = grey.Darkest, bg = green.Normal, style = style.Bold },
		Normal = { fg = grey.Loud, bg = grey.Darkest, style = style.Bold },
		Other = { fg = grey.Darkest, bg = yellow.Darker, style = style.Bold },
		Replace = { fg = grey.Loud, bg = red.Normal, style = style.Bold },
		Visual = { fg = grey.Darkest, bg = blue.Normal, style = style.Bold },
	},
}

return M
