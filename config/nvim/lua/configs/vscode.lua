local c = require("vscode.colors").get_colors()

return {
  -- Alternatively set style in setup
  style = "dark",

  -- Enable transparent background
  transparent = vim.g.transparent,

  -- Enable italic comment
  italic_comments = true,

  -- Enable italic inlay type hints
  italic_inlayhints = true,

  -- Underline `@markup.link.*` variants
  underline_links = true,

  -- Disable nvim-tree background color
  disable_nvimtree_bg = true,

  -- Apply theme colors to terminal
  terminal_colors = true,

  -- Override highlight groups (see ./lua/vscode/theme.lua)
  group_overrides = {
    -- this supports the same val table as vim.api.nvim_set_hl
    -- use colors from this colorscheme by requiring vscode.colors!
    Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
    Function = { fg = c.vscYellow, bold = true, italic = true },
    Keyword = { fg = c.vscPink, italic = true },
    NvimTreeFolderIcon = { fg = c.vscAccentBlue },
    NvimTreeFolderName = { fg = c.vscAccentBlue },
    TelescopePromptBorder = { fg = c.vscAccentBlue },
    ["@function"] = { fg = c.vscYellow, bold = true, italic = true },
    ["@keyword.import"] = { fg = c.vscPink, italic = true },
    ["@keyword.return"] = { fg = c.vscPink, italic = true },
  },
}
