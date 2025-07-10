-- SYNTAX HIGHLIGHTS
-- JUL 07, 2025

local basics = require("empty.std.syntax.basics")

local M = {}
local infused = {}

local remap = function(scheme)
	basics = require("scheme." .. scheme .. ".theme.std.syntax.basics")
end

local infuse = function()
	infused.PROFILE = {
		Comment = basics.Comment,
		Conceal = basics.Conceal,
		Constant = basics.Constant,
		Error = basics.Error,
		Identifier = basics.Identifier,
		Ignore = basics.Ignore,
		PreProc = basics.PreProc,
		Special = basics.Special,
		SpecialKey = basics.SpecialKey,
		Statement = basics.Statement,
		String = basics.String,
		Title = basics.Title,
		Todo = basics.Todo,
		Type = basics.Type,
		Underlined = basics.Underlined,
		helpLeadBlank = basics.helpLeadBlank,
		helpNormal = basics.helpNormal,
		["@variable"] = basics.Variable,
		["@variable.parameter"] = basics.Parameter,
	}
	infused.LINKS = {
		Boolean = { link = "Constant" },
		Character = { link = "Constant" },
		Conditional = { link = "Statement" },
		Debug = { link = "Special" },
		Define = { link = "PreProc" },
		Delimiter = { link = "Special" },
		Exception = { link = "Statement" },
		Float = { link = "Number" },
		Function = { link = "Identifier" },
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
end

function M.get(scheme)
	remap(scheme)
	infuse()
	return infused
end

return M
