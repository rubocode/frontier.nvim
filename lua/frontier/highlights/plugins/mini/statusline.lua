-- MINI.STATUSLINE HIGHLIGHTS
-- JUL 05, 2025

local blue = require("frontier.theme.colors.blue")
local green = require("frontier.theme.colors.green")
local grey = require("frontier.theme.colors.grey")
local red = require("frontier.theme.colors.red")

local M = {}

M.CHANGES = {
	MiniStatuslineModeNormal = { fg = grey.Lighter, bg = grey.Black },
	MiniStatuslineModeInsert = { fg = grey.AlmostBlack, bg = green.Normal },
	MiniStatuslineModeVisual = { fg = grey.AlmostBlack, bg = blue.Normal },
	MiniStatuslineModeReplace = { fg = grey.Normal, bg = red.Normal },
	MiniStatuslineModeCommand = { fg = grey.Loud, bg = red.Darker },
	MiniStatuslineModeOther = { fg = grey.Black, bg = grey.Darker },

	-- Highlight used in default statusline
	MiniStatuslineDevinfo = { fg = grey.AlmostBlack, bg = grey.Normal },

	--   (|MiniStatusline.section_git| and |MiniStatusline.section_diagnostics|)
	MiniStatuslineFilename = { fg = grey.Loud, bg = grey.Quiet },
	MiniStatuslineFileinfo = { fg = grey.AlmostBlack, bg = grey.Normal },
	-- Other groups,
	MiniStatuslineInactive = { fg = grey.Darker, bg = grey.Quieter },
}

M.LINKS = {}

return M
