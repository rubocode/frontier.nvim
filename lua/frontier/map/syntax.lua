-- SYNTAX COLOR MODEL
-- JUL 14, 2025

local cyan = require("palette.shared.cyan")
local yellow = require("palette.shared.yellow")
local grey = require("palette.shared.grey")
local red = require("palette.shared.red")
local orange = require("palette.shared.orange")
local black = require("palette.shared.black")
local green = require("palette.shared.green")

local M = {
	Accent = green.Lighter,
	Background = black.Almost,
	Constant = red.Normal,
	Darker = grey.Darker,
	Function = green.Normal,
	Identifier = green.Normal,
	Keyword = grey.Lighter,
	Lighter = grey.Lighter,
	Loud = grey.Loud,
	Normal = grey.Normal,
	Number = red.Normal,
	Peculiar = yellow.Normal,
	Quiet = grey.Quiet,
	Special = cyan.Normal,
	String = orange.Normal,
	Type = red.Normal,
}

return M
