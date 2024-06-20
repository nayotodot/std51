local has, math = pcall(require, "math");

if has and math.cosh then
	return math.cosh;
else
	-- http://lua-users.org/wiki/HyperbolicFunctions
	local abs = math.abs;
	local exp = math.exp;
	local function cosh(x)
		if x == 0 then
			return 1;
		end
		local n = exp(abs(x));
		return n / 2.0 + 0.5 / n;
	end
	return cosh;
end
