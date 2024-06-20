local has, package = pcall(require, "package");

return has and (package.loaders or package.searchers);
