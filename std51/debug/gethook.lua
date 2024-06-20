local has, debug = pcall(require, "debug");

return has and debug.gethook;
