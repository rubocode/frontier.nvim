-- DEFAULT MODE ARCHETYPE
-- JUL 22, 2025

local black = require("palette.default.black")
local blue = require("palette.default.blue")
local green = require("palette.default.green")
local grey = require("palette.default.grey")
local purple = require("palette.default.purple")
local red = require("palette.default.red")
local yellow = require("palette.default.yellow")

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
		Command = { fg = grey.Lighter, bg = red.Darker, style = style.Bold },
		Insert = { fg = grey.Lighter, bg = green.Darker, style = style.Bold },
		Normal = { fg = grey.Lighter, bg = black.Absolute, style = style.Bold },
		Other = { fg = grey.Lighter, bg = purple.Darker, style = style.Bold },
		Replace = { fg = grey.Lighter, bg = red.Normal, style = style.Bold },
		Visual = { fg = grey.Lighter, bg = blue.Darker, style = style.Bold },
	},
}

return M
