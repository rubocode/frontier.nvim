-- DEFAULT TELESCOPE VIEW PROFILE
-- JUL 22, 2025

-- TODO: Remap for custom themes
--
local black = require("palette.default.black")
local grey = require("palette.default.grey")
local cyan = require("palette.default.cyan")
local red = require("palette.default.red")
local green = require("palette.default.green")
local yellow = require("palette.default.yellow")
local style = require("highlights.style")

local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(_) end

local infuse = function()
	profile = {
		Border = { fg = cyan.Normal },
		Prompt = { fg = green.Normal },
		Selection = { fg = grey.Lighter, bg = black.Absolute, style = style.Reverse },
		SelectionCaret = { fg = grey.Lighter, bg = black.Darker },
		Special = { fg = black.Normal, bg = red.Normal, style = style.Reverse },
		Title = { fg = yellow.Normal },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
