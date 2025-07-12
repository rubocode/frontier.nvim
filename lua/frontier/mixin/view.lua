-- LINE COLOR SELECTION
-- JUL 12, 2025

local black = require("frontier.colors.black")
local grey = require("frontier.colors.grey")
local cyan = require("frontier.colors.cyan")
local red = require("frontier.colors.red")
local green = require("frontier.colors.green")
local yellow = require("frontier.colors.yellow")
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
