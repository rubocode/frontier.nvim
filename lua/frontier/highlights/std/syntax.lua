-- syntax highlight groups
--
local blue = require("frontier.theme.colors.blue")
local cyan = require("frontier.theme.colors.cyan")
local green = require("frontier.theme.colors.green")
local grey = require("frontier.theme.colors.grey")
local purple = require("frontier.theme.colors.purple")
local red = require("frontier.theme.colors.red")
local style = require("frontier.highlights.style")
local yellow = require("frontier.theme.colors.yellow")

local M = {}

M.CHANGES = {
	Comment = { fg = grey.Quiet },
	Conceal = { fg = grey.Normal },
	Constant = { fg = red.Normal },
	Error = { fg = red.Normal, style = style.Reverse },
	Function = { fg = blue.Normal },
	Identifier = { fg = green.Normal },
	Ignore = {},
	PreProc = { fg = cyan.Normal },
	Special = { fg = green.Normal },
	SpecialKey = { fg = grey.Quiet },
	Statement = { fg = yellow.Normal },
	String = { fg = green.Lighter },
	Title = {},
	Todo = { style = style.reverse },
	Type = { fg = purple.Lighter },
	Underlined = { fg = cyan.Normal, style = style.Underline },
	helpLeadBlank = {},
	helpNormal = {},
}

M.LINKS = {
	Boolean = { link = "Constant" },
	Character = { link = "Constant" },
	Conditional = { link = "Statement" },
	Debug = { link = "Special" },
	Define = { link = "PreProc" },
	Delimiter = { link = "Special" },
	Exception = { link = "Statement" },
	Float = { link = "Number" },
	HelpCommand = { link = "Statement" },
	HelpExample = { link = "Statement" },
	Include = { link = "PreProc" },
	Keyword = { link = "Statement" },
	Label = { link = "Statement" },
	Macro = { link = "PreProc" },
	Number = { link = "Constant" },
	Operator = { link = "Statement" },
	PreCondit = { link = "PreProc" },
	Repeat = { link = "Statement" },
	SpecialChar = { link = "Special" },
	SpecialComment = { link = "Special" },
	StorageClass = { link = "Type" },
	Structure = { link = "Type" },
	Tag = { link = "Special" },
	Typedef = { link = "Type" },
	asciidocQuotedEmphasized = { link = "Preproc" },
	htmlArg = { link = "htmlTagName" },
	htmlBold = { link = "Normal" },
	htmlEndTag = { link = "htmlTagName" },
	htmlItalic = { link = "Normal" },
	htmlLink = { link = "Function" },
	htmlSpecialTagName = { link = "htmlTagName" },
	htmlTag = { link = "htmlTagName" },
	htmlTagName = { link = "Statement" },
	markdownItalic = { link = "Preproc" },
	xmlEndTag = { link = "Statement" },
	xmlTag = { link = "Statement" },
	xmlTagName = { link = "Statement" },
}

return M
