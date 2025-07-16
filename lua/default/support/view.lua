-- DEFAULT VIEW
-- JUL 12, 2025

local black = require("palette.default.black")
local grey = require("palette.default.grey")
local cyan = require("palette.default.cyan")
local red = require("palette.default.red")
local green = require("palette.default.green")
local yellow = require("palette.default.yellow")
local style = require("highlights.style")

local M = {
	Border = { fg = cyan.Normal },
	Prompt = { fg = green.Normal },
	Selection = { fg = black.Almost, bg = grey.Lighter },
	SelectionCaret = { fg = green.Darker },
	Special = { fg = red.Normal, style = style.Bold },
	Title = { fg = yellow.Normal },
}

return M
