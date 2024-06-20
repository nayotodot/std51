local has, math = pcall(require, "math");

if has and math.sinh then
	return math.sinh;
else
	-- http://lua-users.org/wiki/HyperbolicFunctions
	local exp = math.exp;
	local function sinh(x)
		if x == 0 then
			return 0;
		end
		local sign = x < 0 and -1 or 1;
		local x = x * sign;
		if x < 1 then
			local y = x * x;
			x = x + x * y * (((-0.78966127417357099479e0 * y + -0.16375798202630751372e3) * y + -0.11563521196851768270e5) * y + -0.35181283430177117881e6) /
				(((0.10000000000000000000e1 * y + -0.27773523119650701667e3) * y + 0.36162723109421836460e5) * y + -0.21108770058106271242e7);
		else
			x = exp(x);
			x = x / 2.0 + 0.5 / x;
		end
		return x * sign;
	end
	return sinh;
end
