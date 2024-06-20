local has, table = pcall(require, "table");

if has and table.getn then
	return table.getn;
else
	local function getn(list)
		return #list;
	end
	return getn;
end
