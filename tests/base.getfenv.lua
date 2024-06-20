print(_VERSION);
local getfenv = require "std51.base.getfenv";

print(getfenv() == _G);
