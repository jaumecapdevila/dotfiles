local M = {}
local g = vim.g

M.material = function(base)
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
      strings = { bold = false },
      keywords = { italic = true },
      functions = { italic = true },
      variables = {},
      operators = {},
      types = {},
    },

    plugins = {
      "gitsigns",
      "noice",
      "nvim-cmp",
      "nvim-tree",
      "nvim-web-devicons",
      "rainbow-delimiters",
      "telescope",
      "which-key",
    },

    disable = {
      colored_cursor = false, -- Disable the colored cursor
      borders = false, -- Disable borders between verticaly split windows
      background = g.transparency, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
      term_colors = false, -- Prevent the theme from setting terminal colors
      eob_lines = false, -- Hide the end-of-buffer lines
    },

    custom_highlights = {
      ["@field"] = { fg = base.editor.fg },
      ["@property"] = { fg = base.editor.fg },
    },
  }
end

return M
