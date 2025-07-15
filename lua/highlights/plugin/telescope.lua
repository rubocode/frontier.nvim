-- TELESCOPE COLORS
-- JUL 11, 2025

local view = require("std.support.view")

local M = {}
local infused = {}

local remap = function(theme)
	view = require(theme .. ".support.view")
end

local infuse = function()
	infused.PROFILE = {
		TelescopeBorder = view.Title,
		TelescopePromptBorder = view.Border,
		TelescopeResultsBorder = view.Border,
		TelescopePreviewBorder = view.Border,
		TelescopeMatching = view.Special,
		TelescopePromptPrefix = view.Prompt,
		TelescopeSelection = view.Selection,
		TelescopeSelectionCaret = view.SelectionCaret,
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
