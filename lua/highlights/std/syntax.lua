-- SYNTAX HIGHLIGHTS
-- JUL 07, 2025

local syntax = require("theme.std.syntax")

local M = {}

M.PROFILE = {
	Comment = syntax.Comment,
	Conceal = syntax.Conceal,
	Constant = syntax.Constant,
	Error = syntax.Error,
	Function = syntax.Function,
	Identifier = syntax.Identifier,
	Ignore = syntax.Ignore,
	PreProc = syntax.PreProc,
	Special = syntax.Special,
	SpecialKey = syntax.SpecialKey,
	Statement = syntax.Statement,
	String = syntax.String,
	Title = syntax.Title,
	Todo = syntax.Todo,
	Type = syntax.Type,
	Underlined = syntax.Underlined,
	helpLeadBlank = syntax.helpLeadBlank,
	helpNormal = syntax.helpNormal,
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
