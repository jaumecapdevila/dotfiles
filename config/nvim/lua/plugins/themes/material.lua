local g = vim.g
local colors = require("material.colors")

return {
  contrast = {
    terminal = false, -- Enable contrast for the built-in terminal
    sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
    floating_windows = false, -- Enable contrast for floating windows
    cursor_line = true, -- Enable darker background for the cursor line
    lsp_virtual_text = false, -- Enable contrasted background for lsp virtual text
    non_current_windows = false, -- Enable contrasted background for non-current windows
    filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
  },

  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = { bold = true },
    types = { italic = true },
  },

  plugins = {
    "gitsigns",
    "nvim-cmp",
    "nvim-tree",
    "nvim-web-devicons",
    "telescope",
    "which-key",
  },

  disable = {
    colored_cursor = false, -- Disable the colored cursor
    borders = true, -- Disable borders between verticaly split windows
    background = g.transparent, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
    term_colors = false, -- Prevent the theme from setting terminal colors
    eob_lines = false, -- Hide the end-of-buffer lines
  },
  async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)
  custom_colors = nil, -- If you want to override the default colors, set this to a function
  custom_highlights = {
    ["@property"] = { fg = colors.main.yellow },
    ["@variable.member"] = { fg = colors.main.blue }, -- Fields
    ["@string.escape"] = { fg = colors.editor.fg },
    ["@string.special"] = { fg = colors.editor.fg },
  },
}
