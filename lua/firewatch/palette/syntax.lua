-- SYNTAX PALETTE
-- ADAPTED FROM VIM-TWO-FIREWATCH (Ramzi Akremi)
-- JUL 12, 2025

local aux = require("palette.xterm256.auxiliary")
local uno = require("firewatch.palette.uno")

local M = {
	AlmostBlack = aux.Grey3,
	Black = aux.Grey0,
	BrightBlue = aux.DeepSkyBlue1,
	BrightGreen = aux.SpringGreen2,
	DarkerBrown = aux.IndianRed,
	DarkerGreen = aux.CadetBlue,
	DarkerGrey = aux.Grey37,
	LightBrown = aux.Tan,
	LightGrey = uno.LightGrey,
	LighterGrey = aux.Grey82,
	LightPurple = aux.MediumPurple4,
}

return M
