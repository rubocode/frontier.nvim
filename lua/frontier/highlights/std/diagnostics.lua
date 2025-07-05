-- NORMAL COLORS
-- JUL 03, 2025

local blue = require("frontier.theme.colors.blue")
local cyan = require("frontier.theme.colors.cyan")
local green = require("frontier.theme.colors.green")
local grey = require("frontier.theme.colors.grey")
local red = require("frontier.theme.colors.red")
local yellow = require("frontier.theme.colors.yellow")

local M = {}

M.CHANGES = {
	ErrorMsg = { fg = grey.Lighter, bg = red.Normal },
	ModeMsg = { fg = green.Brighter, bg = grey.AlmostBlack },
	MoreMsg = { fg = grey.Black, bg = cyan.Normal },
	WarningMsg = { fg = grey.Loud, bg = red.Normal },
	DiagnosticError = { fg = grey.Black, bg = red.Brighter },
	DiagnosticInfo = { fg = grey.Black, bg = cyan.Normal },
	DiagnosticWarn = { fg = grey.Black, bg = yellow.Normal },
	DiagnosticHint = { fg = grey.Black, bg = blue.Normal },
	DiagnosticOk = { fg = grey.Black, bg = green.Normal },
}

M.LINKS = {}

return M
