print(_VERSION);
local seeall = require "std51.package.seeall";

local t = {};
seeall(t);
print(getmetatable(t).__index == _G);
