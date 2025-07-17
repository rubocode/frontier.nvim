-- SYNTAX PALETTE
-- ADAPTED FROM VIM-TWO-FIREWATCH (Ramzi Akremi)
-- JUL 12, 2025

local aux = require("palette.xterm256.auxiliary")
local uno = require("firewatch.palette.uno")

local M = {
	Bg = aux.Grey0, -- aux.Grey3
	CursorLine = aux.Grey0,
	Renamed = aux.DeepSkyBlue1,
	Added = aux.SpringGreen2,
	Removed = aux.IndianRed,
	Accent = aux.CadetBlue,
	FoldBg = aux.Grey37,
	Modified = aux.Tan,
	Fg = uno.Uno2,
	Selection = aux.Grey82,
	Gutter = aux.MediumPurple4,
}

return M
