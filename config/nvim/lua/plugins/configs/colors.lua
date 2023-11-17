local M = {}
local g = vim.g

M.catppuccin = {
  flavour = "frappe",
  transparent_background = g.transparency,
  no_underline = true, -- Force no underline
  styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { "italic" }, -- Change the style of comments
    conditionals = { "italic" },
    loops = { "italic" },
    functions = { "bold" },
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

    -- Blend colours against the "base" background
    CursorLine = { bg = "foam", blend = 10 },

    -- By default each group adds to the existing config.
    -- If you only want to set what is written in this config exactly,
    -- you can set the inherit option:
    Search = { bg = "gold", inherit = false },
  },
}

return M
