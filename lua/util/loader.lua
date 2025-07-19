-- Perform the work of updating CHANGES and LINKS
--

local notify = require("util.notify")
local cfg = require("util.config")
local highlight = require("util.highlight")

local M = {}

local process_profile = function(profile)
	for group, spec in pairs(profile) do
		highlight.apply(group, spec)
	end
end

local process_links = function(links)
	for group, link in pairs(links) do
		highlight.link(group, link)
	end
end

function M.process(theme, group)
	notify.warning("Processing: " .. cfg.notice(theme, group))
	local mod = require(group).get(theme)
	process_profile(mod.PROFILE)
	process_links(mod.LINKS)
	notify.warning("Processed!")
end

return M
