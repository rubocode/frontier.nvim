-- DISPLAY THEME ABSTRACTION
-- JUN 08, 2025

local grey = require("colors.grey")

local M = {
	Prominent = { fg = grey.Loud, bg = grey.Quiet },
	Standard = { fg = grey.AlmostBlack, bg = grey.Normal },
	Inactive = { fg = grey.Darker, bg = grey.Quieter },
}

return M
