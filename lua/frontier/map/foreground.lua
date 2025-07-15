-- FRONTIER FOREGROUND MAP
-- JUL 14, 2025

local cyan = require("palette.shared.cyan")
local yellow = require("palette.shared.yellow")
local grey = require("palette.shared.grey")
local green = require("palette.shared.green")

local M = {
	Accent = green.Lighter,
	Darker = grey.Darker,
	Darkest = grey.Darkest,
	Lighter = grey.Lighter,
	Loud = grey.Loud,
	Normal = grey.Normal,
	Peculiar = yellow.Normal,
	Quiet = grey.Quiet,
	Special = cyan.Normal,
}

return M
