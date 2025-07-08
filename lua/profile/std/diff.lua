-- DIFF PROFILE ABSTRACTION
-- JUL 06, 2025

local diff = require("theme.diff")

local M = {
	Add = diff.Add,
	Change = diff.Change,
	Delete = diff.Delete,
	Text = diff.Text,
}

return M
