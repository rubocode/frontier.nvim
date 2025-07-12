-- SYNTAX HIGHLIGHTS
-- JUL 07, 2025

local basic = require("empty.syntax.basic")

local M = {}
local infused = {}

local remap = function(theme)
	basic = require(theme .. ".syntax.basic")
end

local infuse = function()
	infused.PROFILE = {
		Comment = basic.Comment,
		Conceal = basic.Conceal,
		Constant = basic.Constant,
		Delimiter = basic.Delimiter,
		Error = basic.Error,
		Function = basic.Function,
		Identifier = basic.Identifier,
		Ignore = basic.Ignore,
		Keyword = basic.Keyword,
		Operator = basic.Operator,
		PreProc = basic.PreProc,
		Special = basic.Special,
		SpecialKey = basic.SpecialKey,
		Statement = basic.Statement,
		String = basic.String,
		Title = basic.Title,
		Todo = basic.Todo,
		Type = basic.Type,
		Underlined = basic.Underlined,
		helpLeadBlank = basic.helpLeadBlank,
		helpNormal = basic.helpNormal,
	}
	infused.LINKS = {
		Boolean = { link = "Constant" },
		Character = { link = "Constant" },
		Conditional = { link = "Statement" },
		Debug = { link = "Special" },
		Define = { link = "PreProc" },
		-- Delimiter = { link = "Special" },
		Exception = { link = "Statement" },
		Float = { link = "Number" },
		-- Function = { link = "Identifier" },
		HelpCommand = { link = "Statement" },
		HelpExample = { link = "Statement" },
		Include = { link = "PreProc" },
		-- Keyword = { link = "Statement" },
		Label = { link = "Statement" },
		Macro = { link = "PreProc" },
		Number = { link = "Constant" },
		-- Operator = { link = "Statement" },
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

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
