local has, _G = pcall(require, "_G");

return has and (_G.loadstring or _G.load);
