-- SETUP THE COLORSCHEME
-- JUL 07, 2025

local worker = require("util.worker")

local M = {}

function M.setup()
	print("Setting up frontier...")
	worker.install("frontier")
	print("Setup done!")
end

return M
