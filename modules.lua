-- the "require" keyword, basically, runs the module it is importing. Every line
-- so, if the goal is to use the module as a function container, a good idea is
-- to return a single table, containing all the functions

local logger = require("logger")
local test_module = require("module_container.test_module")
logger.log("hello world")
logger.show_nothing()
