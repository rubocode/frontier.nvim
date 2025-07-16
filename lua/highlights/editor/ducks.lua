-- GARBAGE FILE TO TEST mapper.pick()
-- JUL 15, 2025

local mapper = require("util.mapper")

local ducks = mapper.pick("duckford", "ducks")

if ducks then
	print("DUCKS GOOD!")
else
	print("DUCKS BAD!")
end
