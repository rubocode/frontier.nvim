-- MODE
-- JUL 08, 2025

local black = require("palette.shared.black")
local blue = require("palette.shared.blue")
local green = require("palette.shared.green")
local grey = require("palette.shared.grey")
local red = require("palette.shared.red")
local style = require("highlights.style")
local yellow = require("palette.shared.yellow")

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
		Command = { fg = grey.Lighter, bg = red.Darker, style = style.Bold },
		Insert = { fg = black.Absolute, bg = green.Normal, style = style.Bold },
		Normal = { fg = grey.Lighter, bg = black.Absolute, style = style.Bold },
		Other = { fg = yellow.Darker, bg = black.Almost, style = style.Bold },
		Replace = { fg = grey.Lighter, bg = red.Normal, style = style.Bold },
		Visual = { fg = black.Absolute, bg = blue.Normal, style = style.Bold },
	},
}

return M
