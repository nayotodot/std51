print(_VERSION);
local getn = require "std51.table.getn";

local t = { 1, 2, 4, 8, a = 10 };
print(getn(t), #t);
