local has, _G = pcall(require, "_G");

if has and _G.unpack then
	return _G.unpack;
else
	local has, table = pcall(require, "table");
	if has and table.unpack then
		return table.unpack;
	end
end
