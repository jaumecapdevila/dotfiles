local g = vim.g

local colors = require("material.colors.conditionals")

local m = colors.main
local e = colors.editor

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
    functions = { bold = true },
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
    Search = { fg = e.title, bg = e.selection, bold = true },
    IncSearch = { fg = e.title, bg = e.selection, underline = false },
    CurSearch = { fg = e.bg, bg = m.yellow, bold = true },
    ["@field"] = { fg = m.yellow },
    ["@property"] = { fg = m.yellow },
  },
}
