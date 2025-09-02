local palette = require("melange.palettes.dark")

local fg = palette.a.fg
local float = palette.a.float
local accent = palette.b.blue

vim.api.nvim_set_hl(0, "NotifyBackground", { fg = fg, bg = float })
vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = accent, bg = float })
vim.api.nvim_set_hl(0, "TelescopeNormal", { link = "NormalFloat" })
