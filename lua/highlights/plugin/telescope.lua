-- TELESCOPE COLORS
-- JUL 11, 2025

local view = require("empty.mixin.view")

local M = {}
local infused = {}

local remap = function(scheme)
	view = require("scheme." .. scheme .. ".theme.mixin.view")
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

function M.get(scheme)
	remap(scheme)
	infuse()
	return infused
end

return M
