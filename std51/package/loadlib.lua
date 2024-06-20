local has, package = pcall(require, "package");

return has and package.loadlib;
