-- MENU COLORS
-- JUL 03, 2025

local yellow = require("colors.yellow")
local grey = require("colors.grey")
local red = require("colors.red")
local blue = require("colors.blue")
local purple = require("colors.purple")

local M = {}

M.CHANGES = {
	Pmenu = { fg = grey.AlmostBlack, bg = yellow.Normal },
	PmenuSbar = { fg = red.Ligher, bg = red.Darker },
	PmenuSel = { fg = blue.Lighter, bg = blue.Normal },
	PmenuThumb = { fg = purple.Lighter, bg = purple.Normal },
	WildMenu = { fg = grey.White, bg = grey.Black },
}

M.LINKS = {}

return M
