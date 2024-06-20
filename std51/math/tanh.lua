local has, math = pcall(require, "math");

if has and math.tanh then
	return math.tanh;
else
	-- http://lua-users.org/wiki/HyperbolicFunctions
	local exp = math.exp;
	local function tanh(x)
		if x == 0 then
			return 0;
		end
		local sign = x < 0 and -1 or 1;
		local x = x * sign;
		if x < 0.54930614433405 then
			local y = x * x;
			x = x + x * y * ((-0.96437492777225469787e0 * y + -0.99225929672236083313e2) * y + -0.16134119023996228053e4) /
				(((0.10000000000000000000e1 * y + 0.11274474380534949335e3) * y + 0.22337720718962312926e4) * y + 0.48402357071988688686e4);
		else
			x = exp(x);
			x = 1.0 - 2.0 / (x * x + 1.0);
		end
		return x * sign;
	end
	return tanh;
end
