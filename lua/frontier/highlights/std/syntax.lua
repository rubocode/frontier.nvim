-- syntax highlight groups
--

local brighter = require("frontier.theme.colors.brighter")
local grey = require("frontier.theme.colors.grey")
local normal = require("frontier.theme.colors.normal")

local style = require("frontier.highlights.style")

local M = {}

M.CHANGES = {
	Comment = { fg = grey.Quiet },
	Conceal = { fg = grey.Normal },
	Constant = { fg = normal.Red },
	Error = { fg = normal.Red, style = style.Reverse },
	Function = { fg = normal.Green },
	Identifier = { fg = normal.Green },
	Ignore = {},
	PreProc = { fg = normal.Cyan },
	Special = { fg = normal.Green },
	SpecialKey = { fg = grey.Quiet },
	Statement = { fg = normal.Yellow },
	String = { fg = brighter.Green },
	Title = {},
	Todo = { style = style.reverse },
	Type = { fg = brighter.Purple },
	Underlined = { fg = normal.Cyan, style = style.Underline },
	helpLeadBlank = {},
	helpNormal = {},
}

M.LINKS = {
	Number = { link = "Constant" },
	Boolean = { link = "Constant" },
	Character = { link = "Constant" },
	Conditional = { link = "Statement" },
	Debug = { link = "Special" },
	Define = { link = "PreProc" },
	Delimiter = { link = "Special" },
	Exception = { link = "Statement" },
	Float = { link = "Number" },
	Include = { link = "PreProc" },
	Keyword = { link = "Statement" },
	Label = { link = "Statement" },
	Macro = { link = "PreProc" },
	Operator = { link = "Statement" },
	PreCondit = { link = "PreProc" },
	Repeat = { link = "Statement" },
	SpecialChar = { link = "Special" },
	SpecialComment = { link = "Special" },
	StorageClass = { link = "Type" },
	Structure = { link = "Type" },
	Tag = { link = "Special" },
	Typedef = { link = "Type" },
	HelpCommand = { link = "Statement" },
	HelpExample = { link = "Statement" },
	htmlTagName = { link = "Statement" },
	htmlEndTag = { link = "htmlTagName" },
	htmlLink = { link = "Function" },
	htmlSpecialTagName = { link = "htmlTagName" },
	htmlTag = { link = "htmlTagName" },
	htmlBold = { link = "Normal" },
	htmlItalic = { link = "Normal" },
	htmlArg = { link = "htmlTagName" },
	xmlTag = { link = "Statement" },
	xmlTagName = { link = "Statement" },
	xmlEndTag = { link = "Statement" },
	markdownItalic = { link = "Preproc" },
	asciidocQuotedEmphasized = { link = "Preproc" },
}

return M
