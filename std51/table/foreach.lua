local has, table = pcall(require, "table");

if has and table.foreach then
	return table.foreach;
else
	local pairs = require "std51.base.pairs";
	local function foreach(list, func)
		for k, v in pairs(list) do
			func(k, v);
		end
	end
	return foreach;
end
