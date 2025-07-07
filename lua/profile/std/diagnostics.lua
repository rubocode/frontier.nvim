-- DIAGNOSTICS COLOR ABSTRACTION
-- JUL 06, 2025

local red = require("colors.red")
local yellow = require("colors.yellow")
local cyan = require("colors.cyan")
local blue = require("colors.blue")
local green = require("colors.green")
local grey = require("colors.grey")

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
