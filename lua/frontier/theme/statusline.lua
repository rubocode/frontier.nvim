-- STATUSLINE COLOR ABSTRACTION
-- JUL 06, 2025

local red = require("frontier.theme.colors.red")
local blue = require("frontier.theme.colors.blue")
local green = require("frontier.theme.colors.green")
local grey = require("frontier.theme.colors.grey")
local style = require("frontier.highlights.style")

local M = {
	Devinfo = { fg = grey.AlmostBlack, bg = grey.Normal },
	Fileinfo = { fg = grey.AlmostBlack, bg = grey.Normal },
	Filename = { fg = grey.Loud, bg = grey.Quiet },
	Inactive = { fg = grey.Darker, bg = grey.Quieter },
	ModeCommand = { fg = grey.Loud, bg = red.Darker, style = style.Bold },
	ModeInsert = { fg = grey.AlmostBlack, bg = green.Normal, style = style.Bold },
	ModeNormal = { fg = grey.Lighter, bg = grey.Black, style = style.Bold },
	ModeOther = { fg = grey.Black, bg = grey.Darker, style = style.Bold },
	ModeReplace = { fg = grey.Normal, bg = red.Normal, style = style.Bold },
	ModeVisual = { fg = grey.AlmostBlack, bg = blue.Normal, style = style.Bold },
}

return M
