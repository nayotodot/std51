local has, table = pcall(require, "table");

if has and table.maxn then
	return table.maxn;
else
	local next = require "std51.base.next";
	local type = require "std51.base.type";
	local function maxn(list)
		local max = 0;
		local i, v = next(list);
		while i do
			if type(i) == "number" and i > max then
				max = i;
			end
			i, v = next(list, i);
		end
		return max;
	end
	return maxn;
end
