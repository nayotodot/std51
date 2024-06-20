local has, math = pcall(require, "math");

return has and (math.atan2 or math.atan);
