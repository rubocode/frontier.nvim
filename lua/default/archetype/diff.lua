-- DEFAULT DIFF ARCHETYPE
-- JUL 13, 2025

local green = require("palette.default.green")
local grey = require("palette.default.grey")
local red = require("palette.default.red")
local yellow = require("palette.default.yellow")

local M = {
	Add = green.Normal,
	Change = yellow.Normal,
	Delete = red.Normal,
	Text = grey.Lighter,
}

return M
