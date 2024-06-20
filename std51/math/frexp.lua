local has, math = pcall(require, "math");

if has and math.frexp then
	return math.frexp;
else
	local abs   = math.abs;
	local floor = math.floor;
	local log   = math.log;
	local function frexp(x)
		if x == 0 then
			return 0, 0;
		end
		local e = floor(log(abs(x)) / log(2) + 1);
		return x / 2 ^ e, e;
	end
	return frexp;
end
