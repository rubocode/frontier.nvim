-- TEXT
-- JUL 12, 2025

local grey = require("palette.shared.grey")
local black = require("palette.shared.black")

local M = {
	Light = {
		Loud = grey.Loud,
		Normal = grey.Normal,
		Quiet = grey.Quiet,
	},
	Dark = {
		Loud = black.Almost,
		Normal = grey.Darkest,
		Quiet = grey.Quiet,
	},
}

return M
