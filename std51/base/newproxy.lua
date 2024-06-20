local has, _G = pcall(require, "_G");

if has and _G.newproxy then
	return _G.newproxy;
else
	local getmetatable = require "std51.base.getmetatable";
	local setmetatable = require "std51.base.setmetatable";
	local type         = require "std51.base.type";
	local function newproxy(metatable)
		local object;
		if type(metatable) == "boolean" and metatable == true then
			object = {};
		elseif type(metatable) == "table" then
			object = getmetatable(metatable);
		end
		return setmetatable({}, object);
	end
	return newproxy;
end
