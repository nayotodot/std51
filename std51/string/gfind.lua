local has, string = pcall(require, "string");

return has and (string.gfind or string.gmatch);
