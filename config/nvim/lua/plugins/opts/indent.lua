local highlight = {
  "RainbowRed",
  "RainbowYellow",
  "RainbowBlue",
  "RainbowGreen",
  "RainbowViolet",
  "RainbowCyan",
}

local hooks = require("ibl.hooks")
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#eb6f92" })
  vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#f6c177" })
  vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#9ccfd8" })
  vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#31748f" })
  vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#c4a7e7" })
  vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#ebbcba" })
end)

return {
  indent = {
    char = "┊",
    highlight = highlight
  },
  scope = { enabled = false },
}
