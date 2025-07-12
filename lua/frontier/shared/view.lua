-- LINE COLOR SELECTION
-- JUL 12, 2025

local black = require("frontier.palette.black")
local grey = require("frontier.palette.grey")
local cyan = require("frontier.palette.cyan")
local red = require("frontier.palette.red")
local green = require("frontier.palette.green")
local yellow = require("frontier.palette.yellow")
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
