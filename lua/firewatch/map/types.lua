-- FIREWATCH TYPES MAP
-- JUL 15, 2025

local duo = require("firewatch.palette.duo")
local uno = require("firewatch.palette.uno")

local M = {
	Constant = duo.Duo2,
	Function = uno.Uno2,
	Identifier = uno.Uno3,
	Keyword = uno.Uno1,
	Number = duo.Duo1,
	String = duo.Duo1,
	Type = duo.Duo1,
}

return M
