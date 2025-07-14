-- MODE
-- JUL 08, 2025

local black = require("palette.shared.black")
local blue = require("palette.shared.blue")
local green = require("palette.shared.green")
local grey = require("palette.shared.grey")
local purple = require("palette.shared.purple")
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
		Insert = { fg = grey.Lighter, bg = green.Darker, style = style.Bold },
		Normal = { fg = grey.Lighter, bg = black.Absolute, style = style.Bold },
		Other = { fg = grey.Lighter, bg = purple.Darker, style = style.Bold },
		Replace = { fg = grey.Lighter, bg = red.Normal, style = style.Bold },
		Visual = { fg = grey.Lighter, bg = blue.Darker, style = style.Bold },
	},
}

return M
