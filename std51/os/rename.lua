local has, os = pcall(require, "os");

return has and os.rename;
