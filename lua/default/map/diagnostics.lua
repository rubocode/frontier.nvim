-- DEFAULT DIAGNOSTICS MAP
-- JUL 22, 2025

-- Maps are intended to be straight color assignments.
-- They are not meant to define full highlight specifications.
-- Here we are using a single location to define the color selection
-- used in diagnostics.
-- Values in the _Text_ section are intended for notifications and other
-- direct use in many contexts.
--
-- In some colorschemes, the text messages don't have enough contrast
-- when used for LSP diagnostics.
-- We need to use a background color to show contrast.
-- The _Line_ values are defined for this purpose.
-- We do not use the { fg = } format for the _Text_ values because
-- it is more intuitive to pick them as direct color values.

local yellow = require("palette.default.yellow")
local cyan = require("palette.default.cyan")
local blue = require("palette.default.blue")
local green = require("palette.default.green")
local red = require("palette.default.red")
local grey = require("palette.default.grey")

local M = {
	Text = {
		Error = red.Normal,
		Hint = blue.Normal,
		Info = cyan.Normal,
		Ok = green.Normal,
		Warn = yellow.Normal,
	},
	Line = {
		Error = { fg = grey.Lighter, bg = red.Darker },
		Hint = { fg = grey.Loud, bg = blue.Normal },
		Info = { fg = grey.Darkest, bg = cyan.Normal },
		Ok = { fg = grey.Lighter, bg = green.Normal },
		Warn = { fg = grey.Darkest, bg = yellow.Normal },
	},
}

return M
