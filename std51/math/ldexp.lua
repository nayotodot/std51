local has, math = pcall(require, "math");

if has and math.ldexp then
	return math.ldexp;
else
	local function ldexp(x, exp)
		return x * 2 ^ exp;
	end
	return ldexp;
end
