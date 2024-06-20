print(_VERSION);
local foreach = require "std51.table.foreach";

local t = { 1, 2, 4, 8, a = 10 };
print(foreach(t, print));
