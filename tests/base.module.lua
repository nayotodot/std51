print(_VERSION);
local module = require "std51.base.module";
local seeall = require "std51.package.seeall";

module("test", seeall);
print(_M, _NAME, _PACKAGE, _G.test);

module("test.module", seeall);
print(_M, _NAME, _PACKAGE, _G.test);
