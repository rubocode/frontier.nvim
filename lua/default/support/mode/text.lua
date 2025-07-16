-- DEFAULT MODE TEXT
-- JUL 08, 2025

local blue = require("palette.shared.blue")
local green = require("palette.shared.green")
local grey = require("palette.shared.grey")
local red = require("palette.shared.red")
local yellow = require("palette.shared.yellow")

local M = {
	Command = { fg = red.Darker },
	Insert = { fg = green.Normal },
	Normal = { fg = grey.Darker },
	Other = { fg = yellow.Darker },
	Replace = { fg = red.Normal },
	Visual = { fg = blue.Normal },
}

return M
