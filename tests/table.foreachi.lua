print(_VERSION);
local foreachi = require "std51.table.foreachi";

local t = { 1, 2, 4, 8, a = 10 };
print(foreachi(t, print));
