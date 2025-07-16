-- FRONTIER FOREGROUND MAP
-- JUL 14, 2025

local cyan = require("palette.default.cyan")
local yellow = require("palette.default.yellow")
local grey = require("palette.default.grey")
local green = require("palette.default.green")

local M = {
	Accent = green.Lighter,
	Lighter = grey.Lighter,
	Loud = grey.Loud,
	Normal = grey.Normal,
	Peculiar = yellow.Normal,
	Quiet = grey.Quiet,
	Special = cyan.Normal,
}

return M
