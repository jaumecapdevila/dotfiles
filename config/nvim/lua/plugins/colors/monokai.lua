local monokai = require("monokai")
local palette = monokai.pro

monokai.setup({
  italics = true,
  palette = palette,
  custom_hlgroups = {
    TelescopeNormal = {
      bg = "NONE",
    },
    TelescopePromptBorder = {
      fg = palette.pink,
    },
  },
})
