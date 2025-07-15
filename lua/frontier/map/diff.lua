-- FRONTIER DIFF MAP
-- JUL 13, 2025

local green = require("palette.shared.green")
local grey = require("palette.shared.grey")
local red = require("palette.shared.red")
local yellow = require("palette.shared.yellow")

local M = {
	Add = green.Normal,
	Change = yellow.Normal,
	Delete = red.Normal,
	Text = grey.Lighter,
}

return M
