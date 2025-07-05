-- NORMAL COLORS
-- JUL 03, 2025

local blue = require("frontier.theme.colors.blue")
local cyan = require("frontier.theme.colors.cyan")
local green = require("frontier.theme.colors.green")
local grey = require("frontier.theme.colors.grey")
local red = require("frontier.theme.colors.red")

local M = {}

M.CHANGES = {
	ErrorMsg = { fg = red.Brighter },
	ModeMsg = { fg = green.Brighter, bg = grey.AlmostBlack },
	MoreMsg = { fg = cyan.Normal },
	WarningMsg = { fg = red.Normal },
	DiagnosticInfo = { fg = green.Normal },
	DiagnosticWarn = { fg = blue.Normal },
}

M.LINKS = {}

return M
