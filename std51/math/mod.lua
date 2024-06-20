local has, math = pcall(require, "math");

return has and (math.mod or math.fmod);
