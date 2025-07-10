-- MODE THEME COLORS
-- JUL 08, 2025

local blue = require("scheme.frontier.colors.blue")
local green = require("scheme.frontier.colors.green")
local grey = require("scheme.frontier.colors.grey")
local red = require("scheme.frontier.colors.red")
local style = require("highlights.style")

local M = {
	Text = {
		Command = { fg = red.Darker },
		Insert = { fg = green.Normal },
		Normal = { fg = grey.Black },
		Other = { fg = grey.Darker },
		Replace = { fg = red.Normal },
		Visual = { fg = blue.Normal },
	},
	Line = {
		Command = { fg = grey.Loud, bg = red.Darker, style = style.Bold },
		Insert = { fg = grey.AlmostBlack, bg = green.Normal, style = style.Bold },
		Normal = { fg = grey.Lighter, bg = grey.Black, style = style.Bold },
		Other = { fg = grey.Black, bg = grey.Darker, style = style.Bold },
		Replace = { fg = grey.Normal, bg = red.Normal, style = style.Bold },
		Visual = { fg = grey.AlmostBlack, bg = blue.Normal, style = style.Bold },
	},
}

return M
