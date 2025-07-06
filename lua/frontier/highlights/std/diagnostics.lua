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
	ErrorMsg = { fg = red.Normal },
	ModeMsg = { fg = grey.Lighter },
	MoreMsg = { fg = cyan.Normal },
	WarningMsg = { fg = yellow.Normal },
	DiagnosticError = { fg = red.Normal },
	DiagnosticHint = { fg = blue.Normal },
	DiagnosticInfo = { fg = cyan.Normal },
	DiagnosticOk = { fg = green.Normal },
	DiagnosticWarn = { fg = yellow.Normal },
	DiagnosticVirtualTextError = { fg = grey.Normal, bg = red.Darker },
	DiagnosticVirtualTextHint = { fg = grey.Loud, bg = blue.Normal },
	DiagnosticVirtualTextInfo = { fg = grey.Loud, bg = cyan.Normal },
	DiagnosticVirtualTextOk = { fg = grey.Lighter, bg = green.Normal },
	DiagnosticVirtualTextWarn = { fg = grey.Lighter, bg = grey.Quiet },
}

M.LINKS = {
	DiagnosticFloatingError = { link = "DiagnosticError" },
	DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
	DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
	DiagnosticFloatingHint = { link = "DiagnosticHint" },
	DiagnosticFloatingOk = { link = "DiagnosticOk" },
	DiagnosticSignFloatingError = { link = "DiagnosticError" },
	DiagnosticSignFloatingInfo = { link = "DiagnosticInfo" },
	DiagnosticSignFloatingWarn = { link = "DiagnosticWarn" },
	DiagnosticSignFloatingHint = { link = "DiagnosticHint" },
	DiagnosticSignFloatingOk = { link = "DiagnosticOk" },
	DiagnosticVirtualLinesError = { link = "DiagnosticVirtualTextError" },
	DiagnosticVirtualLinesHint = { link = "DiagnosticVirtualTextHint" },
	DiagnosticVirtualLinesInfo = { link = "DiagnosticVirtualTextInfo" },
	DiagnosticVirtualLinesOk = { link = "DiagnosticVirtualTextOk" },
	DiagnosticVirtualLinesWarn = { link = "DiagnosticVirtualTextWarn" },
}

return M
