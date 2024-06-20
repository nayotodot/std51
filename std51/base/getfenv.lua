local has, _G = pcall(require, "_G");

if has and _G.getfenv then
	return _G.getfenv;
else
	local type       = _G.type;
	local getinfo    = require "std51.debug.getinfo";
	local getupvalue = require "std51.debug.getupvalue";
	local function getfenv(f)
		f = f or 1;
		local func = type(f) == "function" and f or getinfo(f + 1, "f").func;
		local name, value;
		local up = 0;
		repeat
			up = up + 1;
			name, value = getupvalue(func, up);
		until name == "_ENV" or name == nil
		return value;
	end
	return getfenv;
end
