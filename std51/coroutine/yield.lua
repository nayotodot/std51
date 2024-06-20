local has, coroutine = pcall(require, "coroutine");

return has and coroutine.yield;
