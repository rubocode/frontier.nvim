-- BACKGROUND META COLOR SELECTION
-- JUL 11, 2025

local black = require("scheme.frontier.colors.black")
local grey = require("scheme.frontier.colors.grey")

local M = {
	CursorLine = grey.Darkest,
	LineNr = black.Absolute,
	Normal = black.Almost,
	NormalFloat = grey.Darkest,
}

return M
