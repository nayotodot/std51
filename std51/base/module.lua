local has, _G = pcall(require, "_G");

if has and _G.module then
	return _G.module;
else
	local error   = _G.error;
	local select  = _G.select
	local setfenv = require "std51.base.setfenv";
	local type    = _G.type;
	local loaded  = require "std51.package.loaded";
	local format  = require "std51.string.format";
	local gmatch  = require "std51.string.gmatch";
	local gsub    = require "std51.string.gsub";
	local function findtable(t, f)
		for w in gmatch(f, "[%w_]+") do
			if not t[w] then
				t[w] = {};
			end
			t = t[w];
		end
		return t;
	end
	local function module(modname, ...)
		local ld = loaded[modname];
		if type(ld) ~= "table" then
			ld = findtable(_G, modname);
			if ld == nil then
				error(format("name conflict for module '%s'", modname), 2);
			end
			loaded[modname] = ld;
		end
		if ld._NAME == nil then
			ld._M = ld;
			ld._NAME = modname;
			ld._PACKAGE = gsub(modname, "[^.]*$", "");
		end
		setfenv(2, ld);
		local n = select("#", ...);
		for i = 1, n do
			local f = select(i, ...);
			f(ld);
		end
	end
	return module;
end
