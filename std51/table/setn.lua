local has, table = pcall(require, "table");

if has and table.setn then
	return table.setn;
else
	local getmetatable = require "std51.base.getmetatable";
	local setmetatable = require "std51.base.setmetatable";
	local function setn(list, n)
		if n >= 0 then
			local object = getmetatable(list) or {};
			function object.__len()
				return n;
			end
			setmetatable(list, object);
		end
	end
	return setn;
end
