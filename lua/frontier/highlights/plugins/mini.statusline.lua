-- MINI.STATUSLINE HIGHLIGHTS
-- JUL 05, 2025

local brighter = require("uniwatch.scheme.frontier.colors.brighter")
local grey = require("uniwatch.scheme.frontier.colors.grey")
local normal = require("uniwatch.scheme.frontier.colors.normal")

local M = {}

M.CHANGES = {
	-- MiniStatuslineModeNormal = { fg = grey.Normal, bg = grey.AlmostBlack },
	-- MiniStatuslineModeInsert = { fg = grey.Normal, bg = normal.Green },
	-- MiniStatuslineModeVisual = { fg = grey.Normal, bg = normal.Purple },
	-- MiniStatuslineModeReplace = { fg = grey.Normal, bg = normal.Red },
	-- MiniStatuslineModeCommand = { fg = grey.Normal, bg = normal.Blue },
	-- MiniStatuslineModeOther = { fg = grey.Black, bg = grey.Normal },

	-- -- Highlight used in default statusline
	-- MiniStatuslineDevinfo = { fg = grey.White, bg = grey.Black },

	-- --   (|MiniStatusline.section_git| and |MiniStatusline.section_diagnostics|)
	-- MiniStatuslineFilename = { fg = grey.Normal, bg = normal.Cyan },
	-- MiniStatuslineFileinfo = { fg = grey.Normal, bg = normal.Yellow },

	-- -- Other groups,
	-- MiniStatuslineInactive = { fg = grey.AlmostBlack, bg = grey.Darker },
}

M.LINKS = {}

return M
