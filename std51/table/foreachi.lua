local has, table = pcall(require, "table");

if has and table.foreachi then
	return table.foreachi;
else
	local ipairs = require "std51.base.ipairs";
	local function foreachi(list, func)
		for i, v in ipairs(list) do
			func(i, v);
		end
	end
	return foreachi;
end
