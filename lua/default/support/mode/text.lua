-- DEFAULT MODE TEXT
-- JUL 08, 2025

local blue = require("palette.default.blue")
local green = require("palette.default.green")
local grey = require("palette.default.grey")
local red = require("palette.default.red")
local yellow = require("palette.default.yellow")

local M = {
	Command = { fg = red.Darker },
	Insert = { fg = green.Normal },
	Normal = { fg = grey.Darker },
	Other = { fg = yellow.Darker },
	Replace = { fg = red.Normal },
	Visual = { fg = blue.Normal },
}

return M
