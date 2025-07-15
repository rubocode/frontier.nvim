-- FRONTIER TYPES MAP
-- JUL 15, 2025

local grey = require("palette.shared.grey")
local red = require("palette.shared.red")
local orange = require("palette.shared.orange")
local green = require("palette.shared.green")

local M = {
	Constant = red.Normal,
	Function = green.Normal,
	Identifier = green.Normal,
	Keyword = grey.Lighter,
	Number = red.Normal,
	String = orange.Normal,
	Type = red.Normal,
}

return M
