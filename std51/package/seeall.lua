local has, package = pcall(require, "package");

if has and package.seeall then
	return package.seeall;
else
	local getmetatable = require "std51.base.getmetatable";
	local setmetatable = require "std51.base.setmetatable";
	local function seeall(module)
		local mt = getmetatable(module) or {};
		mt.__index = _ENV;
		setmetatable(module, mt);
	end
	return seeall;
end
