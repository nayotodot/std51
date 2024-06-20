local has, math = pcall(require, "math");

if has and math.log10 then
	return math.log10;
else
	local log = math.log;
	local function log10(x)
		return log(x, 10);
	end
	return log10;
end
