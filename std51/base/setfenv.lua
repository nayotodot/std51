local has, _G = pcall(require, "_G");

if has and _G.setfenv then
	return _G.setfenv;
else
	local type        = _G.type;
	local debug       = require "debug";
	local getinfo     = debug.getinfo;
	local getupvalue  = debug.getupvalue;
	local setupvalue  = debug.setupvalue;
	local upvaluejoin = debug.upvaluejoin;
	local function setfenv(f, t)
		f = f or 1;
		local func = type(f) == "function" and f or getinfo(f + 1, "f").func;
		local name;
		local up = 0;
		repeat
			up = up + 1;
			name = getupvalue(func, up);
		until name == "_ENV" or name == nil
		upvaluejoin(func, up, (function() return up; end), 1);
		setupvalue(func, up, t);
	end
	return setfenv;
end
