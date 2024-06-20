local has, math = pcall(require, "math");

if has and math.pow then
	return math.pow;
else
	local function pow(x, y)
		return x ^ y;
	end
	return pow;
end
