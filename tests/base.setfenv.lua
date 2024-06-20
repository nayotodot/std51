print(_VERSION);
local setfenv = require "std51.base.setfenv";

local glb = {};
local env = {
	_G = glb,
	print = print,
};
setfenv(1, env);
print(glb == _G);
