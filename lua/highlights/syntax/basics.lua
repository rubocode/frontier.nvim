-- SYNTAX BASICS HIGHLIGHTS
-- JUL 07, 2025

local basics = require("empty.profile.syntax.basics")
local mapper = require("util.mapper")

local M = {}
local infused = {}

local remap = function(theme)
	basics = mapper.pick(theme, "profile.syntax.basics")
end

local infuse = function()
	infused.PROFILE = {
		Comment = basics.Comment,
		Constant = basics.Constant,
		Debug = basics.Debug,
		Delimiter = basics.Delimiter,
		Function = basics.Function,
		Identifier = basics.Identifier,
		Ignore = basics.Ignore,
		Keyword = basics.Keyword,
		Label = basics.Label,
		Operator = basics.Operator,
		PreProc = basics.PreProc,
		Special = basics.Special,
		SpecialKey = basics.SpecialKey,
		Statement = basics.Statement,
		StorageClass = basics.StorageClass,
		String = basics.String,
		Tag = basics.Tag,
		Title = basics.Title,
		Todo = basics.Todo,
		Type = basics.Type,
		Underlined = basics.Underlined,
	}
	infused.LINKS = {
		Repeat = { link = "Keyword" },
		Conditional = { link = "Keyword" },
		Boolean = { link = "Constant" },
		Character = { link = "Constant" },
		Define = { link = "PreProc" },
		Float = { link = "Number" },
		Include = { link = "PreProc" },
		Macro = { link = "PreProc" },
		Number = { link = "Constant" },
		SpecialChar = { link = "Special" },
		Structure = { link = "Type" },
		Typedef = { link = "Type" },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
