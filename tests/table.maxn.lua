print(_VERSION);
local maxn = require "std51.table.maxn";

local t = { 1, 2, 4, 8, a = 10 };
print(maxn(t));
