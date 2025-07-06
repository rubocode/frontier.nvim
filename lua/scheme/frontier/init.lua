-- WORKER TO INSTALL THE COLORSCHME
-- JUL 07, 2025

local worker = require("util.worker")
local M = {}

function M.setup()
	worker.install("frontier")
end

return M
