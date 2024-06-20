print(_VERSION);
local newproxy = require "std51.base.newproxy";

local a = newproxy(true);
getmetatable(a).__len = function() return 5; end;
print(#a == 5);

local b = newproxy(a);
print(a ~= b);

local c = newproxy(false);
print(not getmetatable(c));

local status, result = pcall(newproxy, {});
print(status, result);
