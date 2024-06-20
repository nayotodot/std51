print(_VERSION);
local unpack = require "std51.base.unpack";

local t = { 1, 2, 4, 8, a = 10 };
print(unpack(t));
