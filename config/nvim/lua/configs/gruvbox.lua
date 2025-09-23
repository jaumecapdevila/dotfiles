local palette = require("gruvbox").palette

return {
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  inverse = true,
  contrast = vim.g.mood == "Gruvbox Soft" and "soft" or "hard", -- can be "hard", "soft" or empty string
  dim_inactive = false,
  transparent_mode = vim.g.transparent,
  overrides = {
    NotifyBackground = { fg = palette.fg1, bg = palette.bg1 },
    NvimTreeFolderIcon = { fg = palette.bright_orange },
    NvimTreeFolderName = { fg = palette.bright_orange },
    TelescopeBorder = { fg = palette.bright_orange },
    TelescopePromptBorder = { link = "TelescopeBorder" },
    TelescopeResultsBorder = { link = "TelescopeBorder" },
    TelescopePreviewBorder = { link = "TelescopeBorder" },
  },
}
