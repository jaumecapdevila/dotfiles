require("config.options")
require("config.colors")
require("config.autocmds")

-- load general keymaps
local u = require("utils")
local k = require("config.keymaps")
u.map(k.general)

