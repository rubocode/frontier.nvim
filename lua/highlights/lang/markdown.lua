-- MARKDOWN LANGUAGE HIGHLIGHTS
-- JUL 09, 2025

local blue = require("colors.blue")
local grey = require("colors.grey")
local red = require("colors.red")
local style = require("highlights.style")

local syntax = require("theme.std.syntax")
local normal = require("theme.std.normal")

local M = {}

M.PROFILE = {
	markdownUrl = { fg = syntax.Constant },
	markdownCode = { fg = red.Lighter },
	markdownHeadingDelimiter = { fg = syntax.Type },
	markdownListMarker = { fg = syntax.Constant },

	mkdCode = { fg = normal.Normal },
	mkdDelimiter = { fg = blue.Normal },
	mkdLink = { fg = red.Lighter },
	mkdLinkDef = { fg = red.Lighter },
	mkdLinkDefTarget = { fg = red.Lighter, style = style.Underline },
	mkdURL = { fg = red.Lighter, style = style.Underline },

	htmlBold = { fg = grey.Lighter, style = style.Bold },
	htmlItalic = { fg = grey.Lighter, style = style.Italic },
}

M.LINKS = {}

return M
