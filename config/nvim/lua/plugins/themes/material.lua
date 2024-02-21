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
    borders = true,
    background = g.transparent,
    term_colors = false,
    eob_lines = false,
  },

  async_loading = true,

  custom_highlights = {
    ["@field"] = { fg = m.yellow },
    ["@property"] = { fg = m.yellow },
    CurSearch = { fg = e.bg, bg = m.yellow, bold = true },
    IncSearch = { fg = e.title, bg = e.selection, underline = false },
    NvimTreeFolderIcon = { fg = e.accent, bold = false },
    NvimTreeFolderName = { fg = e.fg, bold = false },
    NvimTreeOpenedFolderName = { fg = e.accent, bold = false },
    Search = { fg = e.title, bg = e.selection, bold = true },
  },
}
