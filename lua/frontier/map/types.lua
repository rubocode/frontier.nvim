-- FRONTIER TYPES MAP
-- JUL 15, 2025

local grey = require("palette.default.grey")
local red = require("palette.default.red")
local orange = require("palette.default.orange")
local green = require("palette.default.green")

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
