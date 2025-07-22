-- TELESCOPE PROFILE
-- JUL 11, 2025

local view = require("empty.profile.plugin.telescope.view")

local mapper = require("util.mapper")

local M = {}
local infused = {}

local remap = function(theme)
	view = mapper.pick(theme, "profile.plugin.telescope.view")
end

local infuse = function()
	infused.PROFILE = {
		TelescopeBorder = view.Border,
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
