-- DIAGNOSTICS COLOR THEME
-- JUL 06, 2025

local red = require("frontier.theme.colors.red")
local yellow = require("frontier.theme.colors.yellow")
local cyan = require("frontier.theme.colors.cyan")
local blue = require("frontier.theme.colors.blue")
local green = require("frontier.theme.colors.green")
local grey = require("frontier.theme.colors.grey")

local M = {
	Error = red.Normal,
	Hint = blue.Normal,
	Info = cyan.Normal,
	Ok = green.Normal,
	Warn = yellow.Normal,

	-- Allow for changing background and foreground
	-- for displaying LSP diagnostics in virtual lines.
	--
	LspErrorBg = red.Darker,
	LspErrorFg = grey.Normal,
	LspHintBg = blue.Normal,
	LspHintFg = grey.Quieter,
	LspInfoBg = cyan.Normal,
	LspInfoFg = grey.Quieter,
	LspOkBg = green.Normal,
	LspOkFg = grey.Lighter,
	LspWarnBg = yellow.Normal,
	LspWarnFg = grey.Quieter,
}

return M
