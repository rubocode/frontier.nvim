-- NORMAL COLORS
-- JUL 03, 2025

local brighter = require("frontier.theme.colors.brighter")
local normal = require("frontier.theme.colors.normal")
local grey = require("frontier.theme.colors.grey")

local M = {}

M.CHANGES = {
	ErrorMsg = { fg = brighter.Red },
	ModeMsg = { fg = brighter.Green, bg = grey.AlmostBlack },
	MoreMsg = { fg = normal.Cyan },
	WarningMsg = { fg = normal.Red },
	DiagnosticInfo = { fg = normal.Green },
	DiagnosticWarn = { fg = normal.Blue },
}

M.LINKS = {}

return M
