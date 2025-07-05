-- NORMAL COLORS
-- JUL 03, 2025

local blue = require("frontier.theme.colors.blue")
local cyan = require("frontier.theme.colors.cyan")
local green = require("frontier.theme.colors.green")
local grey = require("frontier.theme.colors.grey")
local red = require("frontier.theme.colors.red")

local M = {}

M.CHANGES = {
	ErrorMsg = { fg = red.Normal },
	ModeMsg = { fg = green.Lighter, bg = grey.AlmostBlack },
	MoreMsg = { fg = grey.Black, bg = cyan.Normal },
	WarningMsg = { fg = grey.Loud, bg = red.Normal },
	DiagnosticError = { fg = grey.Normal, bg = red.Darker },
	DiagnosticInfo = { fg = grey.Loud, bg = cyan.Normal },
	DiagnosticWarn = { fg = grey.Lighter, bg = grey.Quiet },
	DiagnosticHint = { fg = grey.Loud, bg = blue.Normal },
	DiagnosticOk = { fg = grey.Lighter, bg = green.Normal },
}

M.LINKS = {}

return M
