-- VIEW
-- JUL 12, 2025

local black = require("palette.shared.black")
local grey = require("palette.shared.grey")
local cyan = require("palette.shared.cyan")
local red = require("palette.shared.red")
local green = require("palette.shared.green")
local yellow = require("palette.shared.yellow")
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
