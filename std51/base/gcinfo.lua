local has, _G = pcall(require, "_G");

if has and _G.gcinfo then
	return _G.gcinfo;
else
	local collectgarbage = _G.collectgarbage;
	local function gcinfo()
		return collectgarbage("count");
	end
	return gcinfo;
end
