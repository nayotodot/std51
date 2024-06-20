print(_VERSION);
local setn = require "std51.table.setn";

local t = { 1, 2, 4, 8, a = 10 };
local status, result = pcall(setn, t, 1000);
print(status and #t or result);
