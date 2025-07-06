-- NORMAL HIGHLIGHTS
-- JUL 03, 2025

local normal = require("frontier.theme.normal")

local M = {}

M.CHANGES = {
	ColorColumn = normal.ColorColumn,
	LineNr = normal.LineNr,
	Normal = normal.Normal,
	NormalFloat = normal.NormalFloat,
}

M.LINKS = {
	Terminal = { link = "Normal" },
}

return M
