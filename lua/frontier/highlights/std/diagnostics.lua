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
	DiagnosticVirtualLinesError = { fg = grey.Normal, bg = red.Darker },
	DiagnosticVirtualLinesHint = { fg = grey.Quieter, bg = blue.Normal },
	DiagnosticVirtualLinesInfo = { fg = grey.Quieter, bg = cyan.Normal },
	DiagnosticVirtualLinesOk = { fg = grey.Lighter, bg = green.Normal },
	DiagnosticVirtualLinesWarn = { fg = grey.Quieter, bg = yellow.Darker },
}

M.LINKS = {
	DiagnosticFloatingError = { link = "DiagnosticError" },
	DiagnosticFloatingHint = { link = "DiagnosticHint" },
	DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
	DiagnosticFloatingOk = { link = "DiagnosticOk" },
	DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
	DiagnosticSignError = { link = "DiagnosticError" },
	DiagnosticSignHint = { link = "DiagnosticHint" },
	DiagnosticSignInfo = { link = "DiagnosticInfo" },
	DiagnosticSignOk = { link = "DiagnosticOk" },
	DiagnosticSignWarn = { link = "DiagnosticWarn" },
	DiagnosticVirtualTextError = { link = "DiagnosticError" },
	DiagnosticVirtualTextHint = { link = "DiagnosticHint" },
	DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
	DiagnosticVirtualTextOk = { link = "DiagnosticOk" },
	DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
}

return M
