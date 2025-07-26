-- DEFAULT EDITOR SPELL PROFILE
-- JUL 15, 2025

local diag = require("empty.archetype.diagnostics")
local style = require("highlights.style")

local mapper = require("util.mapper")

local M = {}
local profile = {}

-- TODO: Not right now!
--

local remap = function(theme)
	diag = mapper.pick(theme, "archetype.diagnostics")
end

local infuse = function()
	profile = {
		SpellBad = { fg = diag.Text.Error.fg, style = style.Undercurl },
		SpellCap = { fg = diag.Text.Warn.fg, style = style.Undercurl },
		SpellLocal = { fg = diag.Text.Info.fg, style = style.Undercurl },
		SpellRare = { fg = diag.Text.Info.fg, style = style.Undercurl },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
