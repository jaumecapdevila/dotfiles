local g = vim.g
local base = require("material.colors")

return {
  contrast = {
    terminal = false, -- Enable contrast for the built-in terminal
    sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
    floating_windows = false, -- Enable contrast for floating windows
    cursor_line = false, -- Enable darker background for the cursor line
    non_current_windows = false, -- Enable contrasted background for non-current windows
  },

  styles = {
    comments = { italic = true },
    keywords = { italic = true },
  },

  plugins = {
    "dashboard",
    "gitsigns",
    "noice",
    "nvim-cmp",
    "nvim-tree",
    "nvim-web-devicons",
    "rainbow-delimiters",
    "telescope",
    "which-key",
    "nvim-notify",
  },

  disable = {
    colored_cursor = false,
    borders = false,
    background = g.transparent_background,
    term_colors = false,
    eob_lines = false,
  },

  async_loading = true,
  custom_highlights = {
    ["@field"] = { fg = base.main.yellow },
    ["@property"] = { fg = base.main.yellow },
  },
}
