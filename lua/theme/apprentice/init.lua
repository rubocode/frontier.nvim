-- SETUP THE COLORSCHEME
-- JUL 07, 2025

local worker = require("util.worker")

local M = {}

function M.setup()
	worker.install("apprentice")
end

return M
