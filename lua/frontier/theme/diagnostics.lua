-- DIAGNOSTICS COLOR THEME
-- JUL 06, 2025

local red = require("frontier.theme.colors.red")
local yellow = require("frontier.theme.colors.yellow")
local cyan = require("frontier.theme.colors.cyan")
local blue = require("frontier.theme.colors.blue")
local green = require("frontier.theme.colors.green")
local grey = require("frontier.theme.colors.grey")

local M = {
	Error = { fg = red.Normal },
	Hint = { fg = blue.Normal },
	Info = { fg = cyan.Normal },
	Ok = { fg = green.Normal },
	Warn = { fg = yellow.Normal },

	-- Allow for changing background and foreground
	-- for displaying LSP diagnostics in virtual lines.
	--
	LspError = { fg = grey.Normal, bg = red.Darker },
	LspHint = { fg = grey.Quieter, bg = blue.Normal },
	LspInfo = { fg = grey.Quieter, bg = cyan.Normal },
	LspOk = { fg = grey.Lighter, bg = green.Normal },
	LspWarn = { fg = grey.Quieter, bg = yellow.Normal },
}

return M
