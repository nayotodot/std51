if _VERSION == "Lua 5.1" then return require "_G"; end

local loaded = require "std51.base";
local libs = {
	coroutine = require "std51.coroutine",
	debug     = require "std51.debug",
	io        = require "std51.io",
	math      = require "std51.math",
	os        = require "std51.os",
	package   = require "std51.package",
	string    = require "std51.string",
	table     = require "std51.table",
};
local function setfuncs(lib, name)
	local metatable = {
		__index = require(name)
	};
	return setmetatable(lib, metatable);
end

for k, v in pairs(libs) do
	loaded[k] = setfuncs(v, k);
end
loaded["_G"]       = loaded;
loaded["_VERSION"] = "Lua 5.1";

return setfuncs(loaded, "_G");
