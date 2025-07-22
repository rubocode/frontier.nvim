-- FRONTIER SYNTAX BASICS PROFILE
-- JUL 06, 2025

local cyan = require("palette.default.cyan")
local green = require("palette.default.green")
local grey = require("palette.default.grey")
local red = require("palette.default.red")
local orange = require("palette.default.orange")

local text = require("theme.frontier.map.text")
local uniq = require("theme.frontier.map.unique")

local M = {
	Comment = { fg = grey.Quiet },
	Constant = { fg = red.Normal },
	Debug = {},
	Delimiter = { fg = grey.Darker },
	Function = { fg = grey.Lighter },
	Identifier = { fg = green.Normal },
	Keyword = { fg = grey.Lighter },
	Label = {},
	Operator = { fg = grey.Lighter },
	PreProc = { fg = grey.Darker },
	Special = { fg = fg.Special },
	Statement = { fg = grey.Lighter },
	StorageClass = { fg = grey.Lighter },
	String = { fg = orange.Normal },
	Tag = {},
	Title = {},
	Todo = {},
	Type = { fg = orange.Normal },
	Underlined = {},
}

return M
