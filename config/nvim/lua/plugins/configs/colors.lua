local M = {}
local g = vim.g

M.catppuccin = {
  flavour = "frappe",
  transparent_background = g.transparency,
  no_underline = true,       -- Force no underline
  styles = {                 -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { "italic" }, -- Change the style of comments
    conditionals = { "italic" },
    loops = { "italic" },
    functions = {},
    keywords = { "italic" },
    strings = {},
    variables = {},
    numbers = { "bold" },
    booleans = { "bold" },
    properties = { "italic" },
    types = { "italic" },
    operators = {},
  },
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = false,
    telescope = true,
    notify = true,
    noice = true,
    treesitter = true,
    which_key = true,
    semantic_tokens = true,
  },
}

M.rosepine = {
  variant = "main",
  dark_variant = "main",
  bold_vert_split = true,
  dim_nc_background = false,
  disable_background = g.transparency,
  disable_float_background = true,
  disable_italics = false,

  groups = {
    background = g.transparency and "NONE" or "base",
  },

  -- Change specific vim highlight groups
  -- https://github.com/rose-pine/neovim/wiki/Recipes
  highlight_groups = {
    ColorColumn = { bg = "rose" },
    CursorLine = { bg = "foam", blend = 10 },
  },
}

M.material = {
  contrast = {
    terminal = false,            -- Enable contrast for the built-in terminal
    sidebars = false,            -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
    floating_windows = false,    -- Enable contrast for floating windows
    cursor_line = false,         -- Enable darker background for the cursor line
    non_current_windows = false, -- Enable contrasted background for non-current windows
  },

  styles = {
    comments = { italic = true },
    strings = { bold = true },
    keywords = { italic = true },
    functions = { bold = true },
    variables = {},
    operators = {},
    types = {},
  },

  plugins = {
    "gitsigns",
    "illuminate",
    "mini",
    "noice",
    "nvim-cmp",
    "nvim-tree",
    "nvim-web-devicons",
    "rainbow-delimiters",
    "telescope",
    "which-key",
  },

  disable = {
    colored_cursor = false,      -- Disable the colored cursor
    borders = false,             -- Disable borders between verticaly split windows
    background = g.transparency, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
    term_colors = false,         -- Prevent the theme from setting terminal colors
    eob_lines = false            -- Hide the end-of-buffer lines
  },
}

return M
